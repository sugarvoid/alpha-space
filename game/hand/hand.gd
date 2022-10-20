class_name Hand
extends Sprite2D

signal press_animation_finished

@onready var animation_player: AnimationPlayer


func play_press_animation() -> void:
	self.animation_player.play("press_button")
	self.emit_signal("play_press_animation")

