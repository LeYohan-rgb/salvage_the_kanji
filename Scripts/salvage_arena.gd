extends Control


@onready var begin_game_timer = $timers/begin_game_timer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	begin_starting_countdown()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func begin_starting_countdown():
	pass
