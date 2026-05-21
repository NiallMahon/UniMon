extends Node2D

var player_near = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.visible = false



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name =="player":
		player_near = true
		$Label.visible = true
		
			
		
		
func _on_area_2d_body_exited(body: Node2D) -> void:
	player_near = false
	$Label.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_near and Input.is_action_just_pressed("interact"):
		get_tree().change_scene_to_file("res://scenes/lvl2.tscn")
