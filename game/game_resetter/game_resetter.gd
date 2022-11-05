class_name GameResetter
extends Node

@onready var timer: Timer = get_node("Timer")
@onready var label: Label = get_node("Label")


func _process(delta: float) -> void:
	if Input.is_action_pressed('reset'):
		label.visible = true
		_reset_game()
	if Input.is_action_just_released('reset'):
		label.visible = false
		timer.stop()

func _reset_game() -> void:
	if timer.is_stopped():
		timer.start(3.0)
	else:
		return
	

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://game/screen/start_screen/start_screen.tscn")
