class_name BallArea
extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var speed = 300

var width
var angle = deg_to_rad(-45)

func _ready() -> void:
	width = $CollisionShape2D.shape.extents.x * 2
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Vector2(cos(angle), sin(angle))
	position += direction * speed * delta


func _on_area_entered(area: Area2D) -> void:
	if(area is not KillZone):
		if(animation_player.is_playing()):
			animation_player.stop()
		animation_player.play("bounce")
