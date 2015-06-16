#!/usr/bin/env python2
from math import pi, sin, cos, sqrt
import os, uuid

import Leap

# Panda3D stuff
from direct.showbase.ShowBase import ShowBase
from direct.task import Task
from direct.gui.DirectGui import *
from direct.gui.OnscreenImage import OnscreenImage
from direct.gui.OnscreenText import OnscreenText
from panda3d.core import *

import test_blocks

# Before importing tests, import all test modules
import tests

# Event logging
import events

NODE_RADIUS = 0.15

def buildTestButtonLayout(bufferSpace=0.02):
	lTests = tests.getTestList();
	if(len(lTests) == 0):
		return []

	result = []
	layerSizes = [1,6,8,10,12,14,16,18,20]
	layer = 0
	while(len(lTests) > 0):
		# Take the layer's nodes
		nNodes = layerSizes[layer]
		lNodes = lTests[:nNodes]
		lTests = lTests[nNodes:]

		# Lay them out in an N-gon
		layerValues = []
		angAtom = (2*pi) / len(lNodes)
		for idx in xrange(len(lNodes)):
			node = lNodes[idx]
			radius = layer*(NODE_RADIUS*2 + bufferSpace)
			ang = angAtom * idx
			pos = (radius * cos(ang), radius * sin(ang))
			layerValues.append((pos, node))
		result += layerValues
		layer += 1
	return result

def makeCircle(radius):
	ls = LineSegs()
	for i in xrange(128):
		a = ((2*pi)/128.0)*i
		ls.drawTo(radius*cos(a), 0, radius*sin(a))
	node = ls.create()
	return NodePath(node)

def buildNodeCircle(rootNode, nodeInfo):
	node = rootNode.attachNewNode("NodeCircle")
	txt = OnscreenText(text=nodeInfo[1][1], scale=0.07)
	txt.reparentTo(node)
	c = makeCircle(NODE_RADIUS)
	c.reparentTo(node)
	node.setPos(nodeInfo[0][0], 0, nodeInfo[0][1])

def check_circle_collide(center, radius, point):
	return sqrt((center[0]-point[0])**2 + (center[1]-point[1])**2) < radius

class Application(Leap.Listener, ShowBase):
	def __init__(self):
		ShowBase.__init__(self)
		Leap.Listener.__init__(self)
		self.disableMouse()

		# Set up the menu. Get a list of all tests and lay them out in a
		# neat layered polygon pattern
		self.layout = buildTestButtonLayout()
		getModelPath().appendDirectory(os.getcwd())

		# Set up the scene graph to render them
		self.menuRoot = aspect2d.attachNewNode("Main Menu Root")
		for i in self.layout:
			buildNodeCircle(self.menuRoot, i)

		self.menuCircleMap = {}
		self.currentTest = None
		self.currentTestNode = None

		events.postEvent("startup")

	def start_test(self, test):
		# Create a new scene node, and disconnect the menu
		self.menuRoot.detachNode()
		self.currentTestNode = self.render.attachNewNode("Test Root")
		for i in self.menuCircleMap.values():
			i.removeNode()
		self.menuCircleMap.clear()

		# Initialize the test
		self.currentTest = test(self.currentTestNode, self)
		self.currentTest.initialize()
		events.postEvent("start_test")

	def end_test(self):
		events.postEvent("end_test")
		self.currentTest.deinitialize()
		self.currentTestNode.removeNode()
		self.menuRoot.reparentTo(aspect2d)
		self.currentTest = None
		self.currentTestNode = None

	def on_connect(self, ctrl):
		pass

	def on_frame(self, ctrl):
		frame = ctrl.frame()

		if(self.currentTest != None):
			self.currentTest.on_frame(frame)
			return

		ibox = frame.interaction_box
		for pointable in frame.pointables:
			# Get a circle reference
			ref = None
			if(pointable.id in self.menuCircleMap):
				ref = self.menuCircleMap[pointable.id]
			else:
				ref = makeCircle(1)
				self.menuCircleMap[pointable.id] = ref
				ref.reparentTo(aspect2d)
			
			# Rescale the coordinates to the graphics coord system
			npos = ibox.normalize_point(pointable.tip_position)
			screenPos = ((npos.x * 2.0)-1.0, (npos.y * 2.0)-1.0)

			# Assign properties for this frame
			ref.setPos(screenPos[0], 0, screenPos[1])
			ref.setScale(0.02, 1, 0.02)
			if(pointable.touch_zone == Leap.Pointable.ZONE_NONE):
				ref.setColorScale(0,0,0,0)
			elif(pointable.touch_zone == Leap.Pointable.ZONE_TOUCHING): # Touching
				ref.setColorScale(0,1,0,1)
				for t in self.layout:
					if(check_circle_collide(t[0], NODE_RADIUS, screenPos)):
						self.start_test(t[1][0])
			elif(pointable.touch_zone == Leap.Pointable.ZONE_HOVERING): # Hovering
				ref.setColorScale(1,0,0,1)

		# Get list of invalid pointable circles
		badIDs = filter(lambda x: not frame.pointable(x).is_valid, self.menuCircleMap.keys())
		for i in badIDs:
			self.menuCircleMap[i].removeNode()
			del self.menuCircleMap[i]

events.setup(events.BinaryWriter(events.FileWriter("%s.dat" % uuid.uuid4().hex)))

app = Application()
control = Leap.Controller()
control.add_listener(app)
app.run()
