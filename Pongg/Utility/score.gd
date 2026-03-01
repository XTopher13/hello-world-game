extends Control

@onready var score_label: Label = $ScoreLabel
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score_label.text = "Score: " + str(GameState.current_score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func add_point():
	GameState.current_score += 1
	score_label.text = "Score: " + str(GameState.current_score)
