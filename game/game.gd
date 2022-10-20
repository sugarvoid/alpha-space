class_name Game
extends Node2D

@onready var fps_label: Control = get_node("CanvasLayer/FPSCounter")

enum states {
	
}


var state: int

func _ready() -> void:
	$Hand/AnimationPlayer.play("press_button")


func _process(delta: float) -> void:
	fps_label.update_label(Engine.get_frames_per_second())
