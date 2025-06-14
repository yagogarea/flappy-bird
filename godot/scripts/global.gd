extends Node

var score := 0
var isStart := false

signal on_increment_score
signal on_game_start
signal on_game_over

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
	
func increment_score():
	score += 1
	on_increment_score.emit()

func game_over():
	get_tree().paused = true
	on_game_over.emit()
	isStart = false

func game_start():
	isStart = true
	on_game_start.emit()
	score = 0
	on_increment_score.emit()
