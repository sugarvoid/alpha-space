class_name HUD
extends CanvasLayer

@onready var lbl_running_word: Label = get_node("lbl_RunningWord")
@onready var lbl_distance_left: Label = get_node("Distance/lbl_DistanceLeft")
@onready var aniply: AnimationPlayer = get_node("AnimationPlayer")


func _ready() -> void:
	lbl_running_word.text = ""
	$SeedInfo/lbl_Name.text = Seeder.seed_name


func _process(delta: float) -> void:
	pass


func update_word_label(word: String) -> void:
	print('in hud word fuc')
	lbl_running_word.text = word


func update_distance_left_label(number: int) -> void:
	lbl_distance_left.text = str(number)

func play_score_animation(number: int) -> void:
	$Score/Label.text = str(number)
	self.aniply.play("show_score")
