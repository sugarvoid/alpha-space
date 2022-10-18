extends GPUParticles2D

const REG_SPEED: float = 1.4
const WRAP_SPEED: float = 0.6

var mode: int 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.enter_regular_mode()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func enter_wrap_mode() -> void:
	self.lifetime = REG_SPEED
	
func enter_regular_mode() -> void:
	self.lifetime = WRAP_SPEED
