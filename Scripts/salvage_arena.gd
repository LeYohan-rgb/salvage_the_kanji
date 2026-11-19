extends Control


@onready var begin_game_timer = $timers/begin_game_timer
@onready var message_lbl = $main_container/center_container/message_container/message_label
@onready var kanji_timer = $timers/kanji_timer
@onready var kanji_time_bar = $main_container/center_container/time_container/time_bar

#GAME VARIABLES
var game_ten_kanji_dictionary = {}
var time_per_kanji : float = 10.0
var game_running = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	kanji_time_bar.max_value = time_per_kanji
	kanji_time_bar.value = time_per_kanji
	begin_starting_countdown()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if game_running:
		kanji_time_bar.value = (kanji_timer.time_left)

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
	
	#THIS IS THE PART WHERE KANJI ARE SELECTED ACCORDING TO DIFFICULTY
	#CURRENTLY UNAVAILABLE DUE TO LOW NUMBER OF KANJI
	
	var kanji_randomized_index = Global.kanji.keys()
	kanji_randomized_index.shuffle()

	for i in range(10):
		game_ten_kanji_dictionary[i] = {
			"kanji_index" = kanji_randomized_index[i],
			"true_or_false" = true,
		}
		
	print(game_ten_kanji_dictionary)
	
	game_running = true
	#START WITH THE FIRST KANJI
	reproduce_kanji(game_ten_kanji_dictionary[0])
	
func reproduce_kanji(kanji):
	kanji_timer.start(time_per_kanji)
	
	if kanji["true_or_false"] == true:
		pass
	else:
		pass
