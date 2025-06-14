extends Node2D

var velocity : int = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 330
	position.y = randi_range(133, 300)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= velocity * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

func _on_pipe_top_body_entered(body: Node2D) -> void:
	Global.game_over()
	$GameOverSound.play()

func _on_area_2d_body_entered(body: Node2D) -> void:
	Global.increment_score()
	$IncrementScore.play()
