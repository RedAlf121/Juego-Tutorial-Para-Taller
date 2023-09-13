# Juego Tutorial Para Taller
 Este es un pequeño juego que se va a ir desarrollando durante el taller, es un juego sencillo pero que sirve para ver conceptos del motor y sobre desarrollo de videojuegos
 Aquí está el readme que escribí para tu proyecto de videojuego en 2D:

# Mi videojuego en 2D con Godot Engine

Este es un proyecto de un videojuego en 2D que estoy haciendo con Godot Engine, un motor de juegos gratuito y de código abierto que permite crear juegos para múltiples plataformas¹. En este readme, voy a explicar qué es Godot y cómo funciona el paradigma de Godot, así como el estado actual de mi proyecto.

## ¿Qué es Godot?

Godot es un motor de juegos que se basa en el concepto de nodos y escenas. Un nodo es una unidad básica que tiene propiedades, métodos y señales. Los nodos se pueden organizar en una jerarquía, formando un árbol de escena. Una escena es un conjunto de nodos que se pueden guardar y cargar como una unidad. Las escenas se pueden instanciar dentro de otras escenas, creando una estructura modular y reutilizable².

Godot tiene un editor integrado que permite diseñar las escenas, editar los scripts, importar los recursos, probar el juego y exportarlo. Godot también tiene un sistema de animación, un editor de partículas, un editor de shaders, un editor de audio y muchos otros componentes que facilitan la creación de juegos complejos³.

Godot soporta varios lenguajes de programación, como GDScript, C#, C++ y otros a través de GDExtension. GDScript es un lenguaje propio de Godot que se parece a Python y está optimizado para el desarrollo de juegos. C# es un lenguaje popular que se puede usar con el soporte de .NET. C++ es un lenguaje de bajo nivel que se puede usar para extender el motor o crear módulos personalizados. GDExtension es una forma de integrar otros lenguajes o bibliotecas externas con Godot.

## ¿Cómo funciona el paradigma de Godot?

El paradigma de Godot se basa en la idea de que todo es un nodo. Los nodos se pueden clasificar en diferentes tipos según su función, como nodos espaciales, nodos 2D, nodos UI, nodos de control, etc. Cada tipo de nodo tiene sus propias características y comportamientos, pero también hereda las propiedades y métodos comunes de la clase Node.

Los nodos se pueden conectar entre sí mediante señales, que son eventos que se emiten cuando ocurre algo relevante. Por ejemplo, un botón puede emitir una señal cuando se presiona, y otro nodo puede conectarse a esa señal para ejecutar una acción. Las señales permiten una comunicación desacoplada entre los nodos, sin tener que acceder directamente a sus referencias.

Los nodos también se pueden agrupar mediante grupos, que son etiquetas que se pueden asignar a los nodos para identificarlos por una categoría. Los grupos facilitan la búsqueda y la manipulación de los nodos que comparten una característica común. Por ejemplo, se puede crear un grupo llamado "enemigos" para todos los nodos que representan a los enemigos del juego.

Las escenas son la forma principal de organizar los nodos en Godot. Una escena puede contener uno o más nodos, y se puede guardar y cargar como un archivo independiente. Las escenas también se pueden instanciar dentro de otras escenas, creando una relación entre la escena principal y la escena instanciada. La escena principal puede acceder a los nodos de la escena instanciada mediante la referencia a la instancia. La escena instanciada puede acceder a los nodos de la escena principal mediante la referencia al nodo raíz.

Las escenas instanciadas permiten crear componentes reutilizables y modulares para el juego. Por ejemplo, se puede crear una escena que contenga un personaje con su animación, su script y sus colisiones, y luego instanciar esa escena varias veces para crear diferentes personajes en el juego.

## ¿En qué estado está mi proyecto?

Mi proyecto está en una fase inicial, donde solo he implementado el movimiento del personaje y de los obstáculos. El personaje es un nodo 2D que tiene un script GDScript que controla su movimiento con las teclas de dirección. Los obstáculos son nodos 2D que tienen un script GDScript que los hace moverse aleatoriamente por la pantalla. La explicación del código se puede encontrar en los comentarios dentro de los scripts.

## Reglas del juego

Vista desde arriba.
Es un juego de carreras para coger el expreso.
Se controla al personaje con las flechas y con el espacio hace una pirueta para esquivar
Hay 2 tipos de obstaculos, los que corren para coger el expreso
Objetos como postes, latones de basura, etc
Personas que tambien estan corriendo para coger el expreso.
A medida que pasa el tiempo aumenta la velocidad hasta que choques
Si chocas pierdes cosas como el carnet de la facultad y tienes q intentar cogerlo
La vida del personaje es la distancia a la guagua, mientras vayas chocando aumenta tu distancia del expreso si llega al borde de la pantalla perdiste.

(1) Godot Engine - Free and open source 2D and 3D game engine. https://godotengine.org/.
(2) Download - Godot Engine. https://godotengine.org/download/.
(3) Paso a paso — Documentación de Godot Engine (stable) en español. https://docs.godotengine.org/es/stable/getting_started/step_by_step/index.html.
