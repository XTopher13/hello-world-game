extends Area2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var width

func _ready() -> void:
	width = $CollisionShape2D.shape.extents.x * 2

func _physics_process(delta: float) -> void:
	pass
