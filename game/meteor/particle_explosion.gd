extends GPUParticles2D

@onready var life_timer: Timer = get_node("Timer")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.life_timer.start(0.5)
	await life_timer.timeout
	self.queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
