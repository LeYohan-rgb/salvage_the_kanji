extends Control

@onready var begin_game_timer = $timers/begin_game_timer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_game_counter()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func start_game_counter():
	begin_game_timer.start()
	
func _on_begin_game_timer_timeout() -> void:
	pass
