extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	pass

func flip_over() -> void:
	$AnimationPlayer.play("flip_over")
	await  $AnimationPlayer.animation_finished
	$AnimationPlayer.play_backwards("flip_over")


func _on_timer_timeout() -> void:
	flip_over()
