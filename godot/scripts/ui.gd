extends CanvasLayer

func _ready() -> void:
	Global.on_increment_score.connect(change_score)
	Global.on_game_over.connect(game_over)
	$Message.show()
	$Gameover.hide()
	get_tree().paused = false

func _process(delta: float) -> void:
	pass

func change_score():
	$Label.text = str(Global.score)

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		if Global.isStart == false:
			Global.game_start()
			game_start()

func game_start():
	$Message.hide()

func game_over():
	$Gameover.show()
	await get_tree().create_timer(2).timeout
	get_tree().reload_current_scene()
