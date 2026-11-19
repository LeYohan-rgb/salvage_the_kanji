extends Control


@onready var begin_game_timer = $timers/begin_game_timer
@onready var message_lbl = $main_container/center_container/message_container/message_label
@onready var kanji_timer = $timers/kanji_timer
@onready var kanji_time_bar = $main_container/center_container/time_container/time_bar
@onready var radical_slot_1 = $main_container/center_container/kanji_container/radical_list_container/radical_1
@onready var radical_slot_2 = $main_container/center_container/kanji_container/radical_list_container/radical_2
@onready var radical_slot_3 = $main_container/center_container/kanji_container/radical_list_container/radical_3

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
		configure_radicals(kanji["kanji_index"])
	else:
		pass

func configure_radicals(index):
	var kanji_structure = Global.kanji[index]["structure"]
	var radical_slots = convert_structure_to_num_of_radical_slots(kanji_structure)
	
	if radical_slots == 1:
		var no_radicals = Global.kanji[index][1].size()
		radical_slot_2.hide()
		radical_slot_3.hide()
		
		radical_slot_1.get_node("radical_container").columns = no_radicals_to_columns(no_radicals)
		
	
func convert_structure_to_num_of_radical_slots(structure):
	if structure == 3 or structure == 11:
		return 3
	if structure == 12:
		return 1
	return 2

func no_radicals_to_columns(radical_num):
	pass
