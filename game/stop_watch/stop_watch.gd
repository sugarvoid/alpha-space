class_name StopWatch
extends Node2D

var is_running: bool
var _elapsed: float

# Called when the node enters the scene tree for the first time.
func _ready():
	print(seconds2hhmmss(734.54))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(self.is_running):
		self._elapsed += delta
	$Label.text = "%0.2f" % _elapsed

func stop() -> void:
	self.is_running = false
	
func start() -> void:
	self.is_running = true
	
func get_time_elaspsed() -> float:
	return self._elapsed

func get_elaspsed_string() -> String:
	return seconds2hhmmss(_elapsed)

func reset() -> void:
	self._elapsed = 0
	self.is_running = false

func seconds2hhmmss(total_seconds: float) -> String:
	#total_seconds = 12345
	var seconds:float = fmod(total_seconds , 60.0)
	var minutes:int   =  int(total_seconds / 60.0) % 60
	var hours:  int   =  int(total_seconds / 3600.0)
	var hhmmss_string:String = "%02d:%05.2f" % [minutes, seconds]
	return hhmmss_string
