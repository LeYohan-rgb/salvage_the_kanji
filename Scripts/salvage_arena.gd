extends Control


@onready var begin_game_timer = $timers/begin_game_timer
@onready var message_lbl = $main_container/center_container/message_container/message_label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	begin_starting_countdown()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func begin_starting_countdown():
	message_lbl.text = "3..."
	await get_tree().create_timer(1.0).timeout
	message_lbl.text = "2..."
	await get_tree().create_timer(1.0).timeout
	message_lbl.text = "1..."
	await get_tree().create_timer(1.0).timeout
	message_lbl.text = "START!"
	await get_tree().create_timer(1.0).timeout
	message_lbl.text = "..."
	
	#This is to set up all the logistics behind the kanji and all
	kanji_config()
	
func kanji_config():
	pass
