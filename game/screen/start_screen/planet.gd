extends Node2D


@onready var visiblity_notifer: VisibleOnScreenNotifier2D = get_node("VisibleOnScreenNotifier2D")


var moving_dir: Vector2


func _ready():
	self.visiblity_notifer.screen_exited.connect(self._remove_self)

func _process(delta):
	self.position.x += 30 * delta


func _remove_self() -> void:
	self.queue_free()
