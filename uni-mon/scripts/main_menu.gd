extends Control

# const to preload what needs to be loaded
const NEW_GAME = preload("res://scenes/lvl1.tscn")

#makes buttons usable in scrips
@onready var play_btn: Button = $VBoxContainer/PLAY
@onready var load_btn: Button = $VBoxContainer/LOAD
@onready var options_btn: Button = $VBoxContainer/OPTIONS
@onready var quit_btn: Button = $VBoxContainer/QUIT

var is_saved: bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# when play button is pressed
func _on_play_pressed() -> void:
	
	# changes to lvl 1
	get_tree().change_scene_to_packed(NEW_GAME)
	
