extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Line2D.clear_points()
	$Line2D.add_point(Vector2(190, 50))
	$Line2D.add_point(Vector2(320, 74))
	$Line2D.add_point(Vector2(20, 74))


func create_laser_line(st_point: Vector2, end_point: Vector2) -> void:
	$Line2D.clear_points()
	$Line2D.add_point(st_point)
	$Line2D.add_point(end_point)
	

func flash_lasers() -> void:
	# Line2d.visible = false
	# Line2d.visible = true
	# maybe to x2
	# false
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
