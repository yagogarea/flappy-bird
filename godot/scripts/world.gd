extends Node2D

@export var pipes: PackedScene 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.on_game_start.connect(game_start)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func create_pipes():
	var pipe_game = pipes.instantiate()
	add_child(pipe_game)

func _on_timer_timeout() -> void:
	create_pipes() 

func _on_area_2d_body_entered(body: Node2D) -> void:
	Global.game_over()
	$GameOverSound.play()

func game_start():
	$Timer.start()
