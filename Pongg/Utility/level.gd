@tool
extends Node2D

var ball_scene = preload("res://Entities/Ball/ball.tscn")
var player_scene = preload("res://Entities/Player-Paddle/player_paddle.tscn")
var cpu_scene = preload("res://Entities/CPU-Paddle/computer_paddle.tscn")
var ball: Area2D
var left: Node2D
var right: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var viewport_size = get_viewport().size
	var zoom = $Camera2D.zoom
	
	var edge_of_screen = viewport_size.x/zoom.x/2
	
	ball = ball_scene.instantiate()
	left = player_scene.instantiate()
	right = player_scene.instantiate()
	#right = cpu_scene.instantiate()
	add_child(ball)
	add_child(left)
	add_child(right)
	ball.position = Vector2(-edge_of_screen + left.width/2 + ball.width/2,0)
	left.position = Vector2(-edge_of_screen + left.width/2,0)
	right.position = Vector2(edge_of_screen - left.width/2,0)
	
	print("ready")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
