extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _highlight_child() -> void:
	if self.get_child_count() == 1:
		pass
		
func _unhighlight_child() -> void:
	if self.get_child_count() == 1:
		pass


func _on_click_area_input_event(viewport, event, shape_idx):
	pass # Replace with function body.


func _on_click_area_mouse_entered():
	pass # Replace with function body.


func _on_click_area_mouse_exited():
	pass # Replace with function body.
