class_name BallArea
extends Area2D

var speed = 100

var width
var angle = deg_to_rad(-45)

func _ready() -> void:
	width = $CollisionShape2D.shape.extents.x * 2
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Vector2(cos(angle), sin(angle))
	position += direction * speed * delta
