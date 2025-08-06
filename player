extends CharacterBody2D

var speed = 80
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
#definindo a animação inicial
	anim.play("idle")

func _physics_process(delta: float) -> void:

#velocidade do player em x (left, right) e y (up e down)
	var direction = Input.get_axis("left", "right")
	var direction_2 = Input.get_axis("up", "down")
	
#evita que haja diagonal
	if direction != 0:
		velocity = Vector2(direction, 0) * speed
	elif direction_2 != 0:
		velocity = Vector2(0, direction_2) * speed
	else:
		velocity = Vector2.ZERO

#definindo as animações por direções
	if velocity.length() > 0:
		if velocity.x != 0: #horizontal
			anim.play("walk_right" if velocity.x > 0 else "walk_left")
		else: #vertical
			anim.play("walk_down" if velocity.y > 0 else "walk_up")
	else:
		anim.play("idle") #para a animação e volta para o estado de idle

	move_and_slide()
