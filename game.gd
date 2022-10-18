extends Node2D

enum states {
	
}
@onready var fps_label: Control = get_node("CanvasLayer/FPSCounter")

var state: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	fps_label.update_label(Engine.get_frames_per_second())
