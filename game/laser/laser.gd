class_name Laser
extends Node2D

@onready var line_2d: Line2D = get_node("Line2D")
@onready var life_timer: Timer = get_node("Timer")

var start_pos: Vector2
var end_pos: Vector2

func _ready() -> void:
	assert(self.start_pos != Vector2.ZERO or self.start_pos != Vector2.ZERO, "Laser does not have a start or end point!")
	self._create_line()
	self.life_timer.start(0.08)
	await life_timer.timeout
	self.queue_free()
	
	#self.animation_player.play("flash")

func _create_line() -> void:
	self.line_2d.clear_points()
	self.line_2d.add_point(self.start_pos)
	self.line_2d.add_point(self.end_pos)
	

func flash_lasers() -> void:
	# Line2d.visible = false
	# Line2d.visible = true
	# maybe to x2
	# false
	pass

func _remove_self() -> void:
	self.queue_free()

func _connect_child_signals() -> void:
	self.animation_player.animation_finished.connect(_remove_self)
