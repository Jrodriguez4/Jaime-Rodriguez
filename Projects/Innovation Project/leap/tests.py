__tests = []

from panda3d.bullet import *
from panda3d.core import *
from direct.task import Task
import procedural, events

class BaseTest:
	def __init__(self, root, app):
		self.root = root
		self.app = app

		# Register update task
		app.taskMgr.add(self.update, "TestUpdateTask")

	def initialize(self):
		pass

	def deinitialize(self):
		pass

	def update(self, task):
		self.app.end_test()

	def on_frame(self, frame):
		pass

	def notifyInit(self, name):
		self.name = name
		events.postEvent("test_init", name=name)
	
	def notifyDeinit(self):
		events.postEvent("test_deinit", name=self.name)

	# Change a Leap vector into a tuple vector usable with Panda3D
	def rescaleLeapVector(self, v):
		return (-(v.x / 50), (v.z / 50), v.y / 50)

# Base class for tests that run within a 3d environment. Creates a 3d ground
# plane and configures the background and camera
class Test3D(BaseTest):
	def __init__(self, root, app):
		BaseTest.__init__(self, root, app)

		app.win.setClearColor(VBase4(0,0.8,0.8,0))

		self.ground = app.loader.loadModel("plane.egg")
		self.ground.reparentTo(root)
		self.ground.setPos(0,0,0)

		app.camera.setPos(20,20,20)
		app.camera.lookAt(LPoint3f(0,0,0), LVector3f(0,0,1))
		#app.camera.setPos(20,20,30)
	
class Env2DTest(BaseTest):
	pass

# Base class for tests that provides a physically-simulated
# 3D environment
class Env3DTest(Test3D):
	def __init__(self, root, app):
		Test3D.__init__(self, root, app)

		# Initialize physics world
		self.world = BulletWorld()
		self.world.setGravity(Vec3(0,0,-9.81))

		# Create the ground plane
		self.physGround = BulletRigidBodyNode("Ground")
		self.physGround.addShape(BulletPlaneShape(Vec3(0,0,1), 1))
		self.ground.attachNewNode(self.physGround)
		self.world.attachRigidBody(self.physGround)

		# Enable bullet debug render
		self.dbgNode = BulletDebugNode("BDebug")
		self.dbgNode.showWireframe(True)
		self.dbgNode.showConstraints(True)
		self.dbgNode.showBoundingBoxes(True)
		self.dbgNode.showNormals(True)
		self.dbgNP = self.root.attachNewNode(self.dbgNode)
		self.dbgNP.show()
		self.world.setDebugNode(self.dbgNode)

	def initialize(self):
		Test3D.initialize(self)

		# Start update task
		self.app.taskMgr.add(self.__physicsUpdate, "Physics Update")

	def deinitialize(self):
		Test3D.deinitialize(self)
	
	def __physicsUpdate(self, task):
		dt = globalClock.getDt()
		self.world.doPhysics(dt)
		return Task.cont

def registerTest(cls, name):
	__tests.append((cls, name))

def getTestList():
	return __tests
