extends CharacterBody2D

const SPEED = 200.0
var direction = Vector2.ZERO

func get_input():
	direction = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
	velocity = direction * SPEED
	
func _physics_process(delta: float) -> void:
	get_input()
	animation()
	move_and_slide()
	
func animation():
	if direction:
		if direction.x > 0:
			$AnimatedSprite2D.flip_h = true
			$AnimatedSprite2D.play("left")
		elif direction.x < 0:
			$AnimatedSprite2D.flip_h = true
			$AnimatedSprite2D.play("right")
		if direction.y>0:
			$AnimatedSprite2D.play("down")
		elif direction.y<0 :
			$AnimatedSprite2D.play("up")
		
	else:
		$AnimatedSprite2D.frame = 0
		
