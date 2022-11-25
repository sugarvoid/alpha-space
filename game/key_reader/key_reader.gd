extends Node


func _process(delta: float) -> void:
	if Input.is_action_pressed('reset'):
		_reset_game()

func _reset_game() -> void:
	if !Input.is_action_pressed('reset'):
		return
	var timer: Timer = Timer.new()
	self.add_child(timer)
	timer.start(2.0)
	await timer.timeout
	if !Input.is_action_pressed('reset'):
		return
	get_tree().change_scene_to_file("res://game/screen/start_screen/start_screen.tscn")
