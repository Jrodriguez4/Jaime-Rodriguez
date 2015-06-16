import tests, events, math
from panda3d.bullet import *
from panda3d.core import *

GRAB_RADIUS = 0.75

class GrabStateOpen:
	def __init__(self):
		print("Switched to GrabStateOpen")
	
	def update(self, mean_pos, delta, minrad, trace):
		if(delta < 0 and minrad < GRAB_RADIUS):
			if(trace == None):
				events.postEvent("grab_block_fail", x=mean_pos[0], y=mean_pos[1], z=mean_pos[2])
				return GrabStateClosedNoGrab()
			ident = int(trace.getTag("id"))
			events.postEvent("grab_block", x=mean_pos[0], y=mean_pos[1], z=mean_pos[2], id=ident)
			return GrabStateClosedGrab(trace)
		return self

class GrabStateClosedNoGrab:
	def __init__(self):
		print("Switched to GrabStateClosedNoGrab")
	
	def update(self, mean_pos, delta, minrad, trace):
		if(minrad > GRAB_RADIUS):
			events.postEvent("retry_grab")
			return GrabStateOpen()
		return self

class GrabStateClosedGrab:
	def __init__(self, shape):
		print("Switched to GrabStateClosedGrab")
		self.shape = shape
		self.shape.node().setKinematic(True)
		self.lastErr = 0
	
	def update(self, mean, delta, minrad, trace):
		# Move the shape to the specified center point
		self.shape.setPos(*mean)

		# Update FSM
		if(minrad > GRAB_RADIUS):
			events.postEvent("release_block", id=int(self.shape.getTag("id")))
			self.shape.node().setKinematic(False)
			return GrabStateOpen()
		return self

class TestBlocks(tests.Env3DTest):
	def initialize(self):
		tests.Env3DTest.initialize(self)

		# Set up the empty finger mapping, the save location for the last
		# average finger distance, and the state of the grab state machine
		self.fingerMap = {}
		self.avgFingerLast = 0
		self.fsm = GrabStateOpen()

		# Move the camera
		self.app.camera.setPos(0,15,10)
		self.app.camera.lookAt(LPoint3f(0,0,0), LVector3f(0,0,1))

		# Add boxes
		self.boxes = [self.addBox(1, 1),
			self.addBox(1, -1),
			self.addBox(-1, 1)]
		self.boxes[0].setColorScale(1,0,0,1)
		self.boxes[1].setColorScale(0,1,0,1)
		self.boxes[2].setColorScale(0,0,1,1)

		self.boxes[0].setTag("id", "0")
		self.boxes[1].setTag("id", "1")
		self.boxes[2].setTag("id", "2")

		self.stackTimes = {}

		self.notifyInit("blocks")

	def loadCube(self, node, scale=0.5):
		mdl = self.app.loader.loadModel("cube.egg")
		mdl.flattenLight()
		mdl.reparentTo(node)
		mdl.setScale(scale, scale , scale)
	
	def addBox(self, x, y, scale=0.5):
		bs = BulletBoxShape(Vec3(scale, scale, scale))
		node = BulletRigidBodyNode("Box (%d,%d)" % (x,y))
		node.setMass(1)
		node.addShape(bs)
		np = self.root.attachNewNode(node)
		np.setPos(x*1.2,y*1.2,1)
		self.world.attachRigidBody(node)
		mdl = self.loadCube(np,scale)
		return np

	def update(self, task):
		if("boxes" not in self.__dict__):
			return True
		# Use the box collisions to reason about whether objects are stacked. First
		# find objects that are and aren't on the ground
		def touching(a,b):
			for i in self.world.contactTest(a.node()).getContacts():
				if(i.getNode0() == b):
					return True
				elif(i.getNode1() == b):
					return True
			return False
		notOnGround = []
		onGround = []
		for b in self.boxes:
			ctxs = self.world.contactTest(b.node()).getContacts()
			ong = False
			for i in ctxs:
				if(i.getNode0() == self.physGround or i.getNode1() == self.physGround):
					ong = True
					break
			if(ong):
				onGround.append(b)
			else:
				notOnGround.append(b)

		# Any that aren't are stacked, so increment their stack time counters
		print("%d not on ground" % len(notOnGround))
		for b in notOnGround:
			idn = int(b.getTag("id"))
			if(idn in self.stackTimes):
				self.stackTimes[idn] += 1
			else:
				events.postEvent("block_stacked", id=idn)
				self.stackTimes[idn] = 1

		# Otherwise check if they're in collision with a not-on-ground object, meaning
		# they're the base object. There can only be one of these.
		print("%d on ground" % len(onGround))
		baseObj = None
		for b in onGround:
			for other in notOnGround:
				if(self.world.contactTestPair(b.node(), other.node())):
					baseObj = b
					break
			if(baseObj != None):
				break
		
		# Reset stack counters of objects that are on the ground or moving
		for b in onGround:
			idn = int(b.getTag("id"))
			if(b != baseObj and (idn in self.stackTimes)):
				del self.stackTimes[idn]
				events.postEvent("block_fell", id=idn)
		for b in self.boxes:
			if(b.node().isActive() and (int(b.getTag("id")) in self.stackTimes)):
				del self.stackTimes[int(b.getTag("id"))]
		
		# If all objects are stacked then the test is done
		if(len(self.stackTimes) == len(self.boxes)):
			done = True
			for k in self.stackTimes.keys():
				i = self.stackTimes[k]
				if(i < 200):
					done = False
					break
				else:
					events.postEvent("stack_block", id=k)
			if(done):
				self.app.end_test()
				return False
		return True

	def on_frame(self, frame):
		if(len(frame.pointables) == 0):
			# Tear down all pointables
			for k in self.fingerMap.keys():
				self.fingerMap[k].removeNode()
				del self.fingerMap[k]
		# Render fingers and get mean finger position
		mean_pos = (0,0,0)
		positions = []
		for point in frame.pointables:
			# Rescale coordinates
			fpos = self.rescaleLeapVector(point.tip_position)
			fpos = (fpos[0], fpos[1], fpos[2]-3)
			
			# Get the finger reference
			if(point.id in self.fingerMap):
				ref = self.fingerMap[point.id]
			else:
				ref = self.root.attachNewNode("Finger %d" % point.id)
				ref.setColorScale(0.3,0.3,0.3,1)
				self.loadCube(ref, 0.1)
				self.fingerMap[point.id] = ref
			
			# Post event
			events.postEvent("finger_motion", index=point.id, x=fpos[0], y=fpos[1], z=fpos[2])
			
			# Configure finger object
			ref.setPos(*fpos)
			
			# Update mean and position list
			positions.append(fpos)
			mean_pos = (mean_pos[0]+fpos[0], mean_pos[1]+fpos[1], mean_pos[2]+fpos[2])
		
		# Tear down any cubes whose pointables no longer exist
		badIDs = filter(lambda x: not frame.pointable(x).is_valid, self.fingerMap.keys())
		for i in badIDs:
			self.fingerMap[i].removeNode()
			del self.fingerMap[i]

		# Compute average finger distance from the mean, update the delta, and get minimum finger distance
		if(len(frame.pointables) == 0):
			return
		mean_pos = (mean_pos[0] / len(frame.pointables),
				mean_pos[1] / len(frame.pointables),
				mean_pos[2] / len(frame.pointables))
		def pointdist(a,b):
			return math.sqrt(
				(a[0]-b[0])**2 +
				(a[1]-b[1])**2 +
				(a[2]-b[2])**2)
		distances = [pointdist(p, mean_pos) for p in positions]
		avg_dist = sum(distances) / len(positions)
		avgDelta = avg_dist - self.avgFingerLast
		self.avgFingerLast = avg_dist
		minFingerDist = min(distances)

		# Update the grab state machine
		trace = None
		if(len(positions) >= 2):
			trace = self.world.rayTestClosest(LPoint3f(*positions[0]), LPoint3f(*mean_pos))
			if(trace.hasHit()):
				for i in self.boxes:
					if(i.node() == trace.getNode()):
						trace = i
						break
				else:
					trace = None
			else:
				trace = None
		self.fsm = self.fsm.update(mean_pos, avgDelta, minFingerDist, trace)

tests.registerTest(TestBlocks, "Blocks")
