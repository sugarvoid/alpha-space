class_name StopWatch
extends Node2D

@onready var label: Label = get_node("Label")

var is_running: bool
var _elapsed: float


func _process(delta):
	if(self.is_running):
		self._elapsed += delta
	self.label.text = "%0.2f" % _elapsed

func stop() -> void:
	self.is_running = false
	
func start() -> void:
	self.is_running = true
	
func get_time_elaspsed() -> float:
	return self._elapsed

func get_elaspsed_string() -> String:
	return self.seconds2hhmmss(self._elapsed)

func reset() -> void:
	self._elapsed = 0
	self.is_running = false

func seconds2hhmmss(total_seconds: float) -> String:
	var seconds: float = fmod(total_seconds , 60.0)
	var minutes: int   =  int(total_seconds / 60.0) % 60
	var hours: int   =  int(total_seconds / 3600.0)
	var hhmmss_string:String = "%02d:%05.2f" % [minutes, seconds]
	return hhmmss_string
