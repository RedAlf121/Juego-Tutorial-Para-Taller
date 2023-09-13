extends KinematicBody2D

# Esta línea define una variable llamada direction, 
#que es un vector de dos dimensiones (x, y) que indica la dirección 
#en la que se mueve el personaje.
var direction = Vector2()

#Esta línea define una variable llamada speed, 
#que es un número entero que indica la velocidad a 
#la que se mueve el personaje. 
#La palabra export indica que esta variable se puede 
#modificar desde el editor de Godot.
export(int) var speed = 400

# Esta línea define una variable llamada animation, 
#que es una referencia al nodo AnimationPlayer, 
#que es un tipo de objeto que puede reproducir animaciones. 
#La palabra onready indica que esta variable se inicializa 
#cuando el script está listo para ejecutarse.
onready var animation = $AnimationPlayer

# Esta función se llama cada vez que se actualiza 
#la física del juego, que es varias veces por segundo. 
#El parámetro delta es un número decimal que indica el tiempo 
#transcurrido desde la última actualización.
func _physics_process(delta):
	# Esta línea llama a la función detect_movement, que se encarga de detectar el movimiento del personaje según las teclas presionadas por el usuario. Esta función fue creada, no viene por defecto como _physics_process
	detect_movement()
	# Esta línea llama a la función detect_rotation, que se encarga de detectar la rotación del personaje según la tecla espacio presionada por el usuario.
	detect_rotation()
	# Esta línea mueve al personaje según la dirección y la velocidad definidas anteriormente, y también hace que el personaje colisione con otros objetos si los hay.
	move_and_slide(direction*speed)
	# Esta línea limita la posición horizontal del personaje entre 0+32 y 400-32, para evitar que se salga de la pantalla.
	#El porque de 0+32 y 400-32 es de manera mas visual la pantalla es de 400x600, entonces mis limites de la pantalla son 0 y 400, pero el personaje se queda por la mitad
	#El 32 ese sale porque la imagen es de 64x64 y la mitad seria 32x32
	position.x = clamp(position.x,0+32,400-32)

# Esta función se encarga de detectar el movimiento del personaje según las teclas presionadas por el usuario.
func detect_movement():
	# Esta condición verifica si el usuario está presionando la tecla izquierda (ui_left), y si es así, asigna el valor Vector2.LEFT a la variable direction. Vector2.LEFT es un vector predefinido que tiene el valor (-1, 0), lo que significa moverse hacia la izquierda.
	if(Input.is_action_pressed("ui_left")):
		direction = Vector2.LEFT
	# Esta condición verifica si el usuario está presionando la tecla derecha (ui_right), y si es así, asigna el valor Vector2.RIGHT a la variable direction. Vector2.RIGHT es un vector predefinido que tiene el valor (1, 0), lo que significa moverse hacia la derecha.
	elif(Input.is_action_pressed("ui_right")):
		direction = Vector2.RIGHT
	# Esta condición verifica si el usuario no está presionando ninguna de las dos teclas anteriores, y si es así, asigna el valor Vector2.ZERO a la variable direction. Vector2.ZERO es un vector predefinido que tiene el valor (0, 0), lo que significa no moverse.
	else:
		direction = Vector2.ZERO

# Esta función se encarga de detectar la rotación del personaje según la tecla espacio presionada por el usuario.
func detect_rotation():
	# Esta condición verifica si el usuario acaba de presionar la tecla espacio (espacio) y si la animación actual no es "pirueta", y si ambas cosas son ciertas, reproduce la animación "pirueta". La animación "pirueta" hace que el personaje gire sobre sí mismo una vez.
	if(Input.is_action_just_pressed("espacio") and animation.current_animation != "pirueta"):
		animation.play("pirueta")
