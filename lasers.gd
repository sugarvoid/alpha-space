extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Line2D.clear_points()
	$Line2D.add_point(Vector2(190, 50))
	$Line2D.add_point(Vector2(320, 74))
	$Line2D.add_point(Vector2(20, 74))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
