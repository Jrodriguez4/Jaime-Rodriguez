import struct, time

# Base event attributes are:
#	time	float
#	type	string

class FileWriter:
	def __init__(self, outfile):
		self.f = open(outfile, "wb")
	
	def write(self, bs):
		self.f.write(bs)
	
	def close(self):
		self.f.close()

class Source:
	def __init__(self, output):
		self.out = output
	
	def emit(self, e):
		self.out.sink(e)

typemap = {
	int: 0,
	str: 1,
	float: 2
}

# Encode events into binary format and write them to a writer object
class BinaryWriter:
	def __init__(self, out):
		self.output = out
	
	def sink(self, e):
		# Encode into binary stream
		bs = bytes()
		for k in e.keys():
			enc = k.encode("utf8")
			bs += struct.pack(">H", len(enc))
			bs += enc
			val = e[k]
			if(type(val) == int): # Type 0
				bs += struct.pack(">Bi", 0, val)
			elif(type(val) == str): # Type 1
				enc = val.encode("utf8")
				bs += struct.pack(">BI", 1, len(enc))
				bs += enc
			elif(type(val) == float): # Type 2
				bs += struct.pack(">Bd", 2, val)
		self.output.write(struct.pack(">I", len(bs))+bs)

# Filter events to those of a specific type
class EventFilter(Source):
	def __init__(self, output, types):
		Source.__init__(self, output)
		self.types = types
	
	def sink(self, e):
		if(e.type in types):
			self.emit(e)

class Recorder:
	def __init__(self, sink):
		self.sink = sink
	
	def post(self, etype, **kwargs):
		# Build an event object
		evt = {}
		evt['time'] = time.time()
		evt['type'] = etype

		for i in kwargs.keys():
			evt[i] =  kwargs[i]
		self.sink.sink(evt)

recorder = None

def postEvent(etype, **kwargs):
	if(recorder == None):
		raise RuntimeError("No recorder!")
	recorder.post(etype, **kwargs)

def setup(sink):
	global recorder
	recorder = Recorder(sink)
