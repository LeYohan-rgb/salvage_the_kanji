extends Control


@onready var begin_game_timer = $timers/begin_game_timer
@onready var message_lbl = $main_container/center_container/message_container/message_label
@onready var kanji_timer = $timers/kanji_timer
@onready var kanji_time_bar = $main_container/center_container/time_container/time_bar
#WE ASSUME 16 IS MAX NUM OF RADICALS IN ONE SLOT
@onready var radical_slot_1 = $main_container/center_container/kanji_container/radical_list_container/radical_1
@onready var radical_slot_2 = $main_container/center_container/kanji_container/radical_list_container/radical_2
@onready var radical_slot_3 = $main_container/center_container/kanji_container/radical_list_container/radical_3
@onready var kanji_box = $main_container/center_container/kanji_container/kanji_box_container/kanji_box_btn
#GAME VARIABLES
var game_ten_kanji_dictionary = {}
var time_per_kanji : float = 10.0
var current_kanji : int = 0 #0-9
var game_running = false
var game_paused = true
var plr_score = {}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	kanji_time_bar.max_value = time_per_kanji
	kanji_time_bar.value = time_per_kanji
	begin_starting_countdown()
	
	#DEFINE PLAYER SCORE
	for i in range(10):
		plr_score[i] = {
			"time_taken" : 0.0,
			"true_or_false" : false, 
			"real_or_salvage": 0, #0 nothing, 1 real, 2 salvage
			"kanji_score": 0.0,
			"original_kanji_score": 0.0,
		}
	
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
			"structure" = Global.kanji[kanji_randomized_index[i]]["structure"],
			"difficulty" = Global.kanji[kanji_randomized_index[i]]["grade"]
		}
		
	print(game_ten_kanji_dictionary)
	
	game_running = true
	game_paused = false
	current_kanji = 0
	#START WITH THE FIRST KANJI
	reproduce_kanji(game_ten_kanji_dictionary[0])
	
func reproduce_kanji(kanji):
	kanji_timer.start(time_per_kanji)
	
	configure_kanji_box(kanji["structure"])
	
	if kanji["true_or_false"] == true:
		configure_radicals(kanji["kanji_index"])
	else:
		pass
		
func configure_kanji_box(kanji_struc):
	kanji_box.text = str(kanji_struc)

func configure_radicals(index):
	var kanji_structure = Global.kanji[index]["structure"]
	var radical_slots = convert_structure_to_num_of_radical_slots(kanji_structure)

	#SLOT 1
	var radical_slot_1_array = Global.kanji[index][1]
	var no_radicals = radical_slot_1_array.size() #AMOUNT OF RADICALS IN SLOT
	var radical_mini_slots = radical_slot_1.get_node("radical_container").get_children()
	
	#HIDE OTHER SLOTS ACCORDINGLY
	if radical_slots == 3:
		radical_slot_2.show()
		radical_slot_3.show()
	if radical_slots == 2:
		radical_slot_3.hide()
		radical_slot_2.show()
	if radical_slots == 1:
		radical_slot_3.hide()
		radical_slot_2.hide()
	
	radical_slot_1.get_node("radical_container").columns = no_radicals_to_columns(no_radicals)
	for i in range(16):
		if i in range(no_radicals):
			radical_mini_slots[i].show()
			radical_mini_slots[i].text = radical_slot_1_array[i]
			
		else:
			radical_mini_slots[i].hide()
			
	if radical_slots == 3:
		var radical_slot_3_array = Global.kanji[index][3]
		var no_radicals_3 = radical_slot_3_array.size() #AMOUNT OF RADICALS IN SLOT
		var radical_mini_slots_3 = radical_slot_3.get_node("radical_container").get_children()
		
		radical_slot_3.get_node("radical_container").columns = no_radicals_to_columns(no_radicals_3)
		for i in range(16):
			if i in range(no_radicals_3):
				radical_mini_slots_3[i].show()
				radical_mini_slots_3[i].text = radical_slot_3_array[i]
				
			else:
				radical_mini_slots_3[i].hide()
	
	if radical_slots > 1:
		var radical_slot_2_array = Global.kanji[index][2]
		var no_radicals_2 = radical_slot_2_array.size() #AMOUNT OF RADICALS IN SLOT
		var radical_mini_slots_2 = radical_slot_2.get_node("radical_container").get_children()
		
		radical_slot_2.get_node("radical_container").columns = no_radicals_to_columns(no_radicals_2)
		for i in range(16):
			if i in range(no_radicals_2):
				radical_mini_slots_2[i].show()
				radical_mini_slots_2[i].text = radical_slot_2_array[i]
				
			else:
				radical_mini_slots_2[i].hide()
			
	
func convert_structure_to_num_of_radical_slots(structure):
	if structure == 3 or structure == 11:
		return 3
	if structure == 12:
		return 1
	return 2

func no_radicals_to_columns(radical_num):
	#ASSUMING NO KANJI HAS MORE THAN 16 RADICALS IN ONE SLOT
	if radical_num == 1:
		return 1
	if radical_num == 2 or radical_num == 4:
		return 2
	if radical_num == 3 or radical_num == 5 or radical_num == 6:
		return 3
	else:
		return 4


func _on_kanji_timer_timeout() -> void:
	ran_out_of_time()
	
func ran_out_of_time():
	plr_score[current_kanji]["time_taken"] = time_per_kanji
	plr_score[current_kanji]["true_or_false"] = game_ten_kanji_dictionary[current_kanji]["true_or_false"]
	plr_score[current_kanji]["real_or_salvage"] = 0
	plr_score[current_kanji]["kanji_score"] = 0
	plr_score[current_kanji]["original_kanji_score"] = game_ten_kanji_dictionary[current_kanji]["difficulty"]
	
	interlude_scene(0)

func interlude_scene(outcome):
	#ran out of time
	if outcome == 0:
		game_paused = true
		message_lbl.text = "Ran out of time!"
		await get_tree().create_timer(1.0).timeout
		
	if current_kanji != 9:
		current_kanji += 1
		message_lbl.text = ""
		game_paused = false
		reproduce_kanji(game_ten_kanji_dictionary[current_kanji])
	else:
		game_running = false
		go_to_end_screen()

func go_to_end_screen():
	pass
