extends Control

@onready var settings_menu = $settings_menu
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/playing_menu.tscn")


func _on_settings_btn_pressed() -> void:
	settings_menu.show()


func _on_option_button_item_selected(index: int) -> void:
	Global.game_mode = index
	print(index)


func _on_settings_close_button_pressed() -> void:
	settings_menu.hide()
