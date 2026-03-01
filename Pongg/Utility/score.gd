extends Control

var score = 0

@onready var score_label: Label = $ScoreLabel
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score_label.text = "Score: " + str(score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func add_point():
	score += 1
	score_label.text = "Score: " + str(score)
