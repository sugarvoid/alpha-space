class_name HUD
extends CanvasLayer

@onready var _lbl_running_word: Label = get_node("lbl_RunningWord")
@onready var _lbl_distance_left: Label = get_node("Distance/lbl_DistanceLeft")
@onready var _aniply: AnimationPlayer = get_node("AnimationPlayer")
@onready var _stopwatch: StopWatch = get_node("StopWatch")


func _ready() -> void:
	_lbl_running_word.text = ""
	$DashStatic.visible = false
	$SeedInfo/lbl_Name.text = Seeder.seed_name

func disable_mouse_input() -> void:
	self._block_all_mouse_inputs()
	$DashStatic.visible = true
	var timer: Timer = Timer.new()
	add_child(timer)
	timer.start(4.0)
	await timer.timeout
	timer.queue_free()
	self._allow_mouse_inputs()
	$DashStatic.visible = false

func update_word_label(word: String) -> void:
	print('in hud word fuc')
	_lbl_running_word.text = word

func update_distance_left_label(number: int) -> void:
	_lbl_distance_left.text = str(number)

func play_score_animation(number: int) -> void:
	$Score/Label.text = str(number)
	self._aniply.play("show_score")

func _block_all_mouse_inputs() -> void:
	$MouseBlocker.set_mouse_filter(0)

func _allow_mouse_inputs() -> void:
	$MouseBlocker.set_mouse_filter(2)

func start_stopwatch() -> void:
	self._stopwatch.start()
	
func stop_stopwatch() -> void:
	self._stopwatch.stop()

func get_stopwatch_time() -> float:
	return self._stopwatch.get_time_elaspsed()

func get_stopwatch_string() -> String:
	return self._stopwatch.get_elaspsed_string()
