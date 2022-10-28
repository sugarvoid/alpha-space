extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	#$AnimationPlayer.play("fade_in_music")
	$AudioStreamPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btn_start_pressed():
	Seeder.set_seed($txt_Seed.text)
	get_tree().change_scene_to_file("res://game/game.tscn")
