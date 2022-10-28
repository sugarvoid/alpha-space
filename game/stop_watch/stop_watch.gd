class_name StopWatch
extends Node2D

var is_running: bool
var _elapsed: float

# Called when the node enters the scene tree for the first time.
func _ready():
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

func reset() -> void:
	self._elapsed = 0
	self.is_running = false
