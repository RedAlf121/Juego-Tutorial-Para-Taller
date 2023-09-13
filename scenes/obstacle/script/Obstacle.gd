extends KinematicBody2D

# Esta línea es similar a la del personaje, pues se tiene que mover con cierta velocidad
export(int) var speed = 400

# Esta función se llama cada vez que se actualiza el juego, que es varias veces por segundo. El parámetro delta es un número decimal que indica el tiempo transcurrido desde la última actualización. Es igual que _physics_process
func _process(delta):	
	move_and_slide(Vector2.DOWN*speed)

# Esta función se llama cuando el obstáculo colisiona con otro objeto. El parámetro body es una referencia al objeto con el que colisiona.
# Se conectó una señal a esa función. Esa señal lo que hace es avisar y llama a la función
func detect_collision(body):
	# Esta condición verifica si el objeto con el que colisiona el obstáculo pertenece al grupo "personaje", que es una forma de identificar al personaje principal del juego.
	if(body.is_in_group("personaje")):
		# Esta línea recarga la escena actual, lo que significa reiniciar el juego desde el principio.
		get_tree().reload_current_scene()
