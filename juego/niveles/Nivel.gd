#Nivel.gd
tool
extends Node

export var numero_nivel: int = 0
export var nivel_actual: String =""
export var menu_game_over = ""
export(String, FILE, "*.tscn") var proximo_nivel=""

func _ready() -> void:
	Eventos.connect("game_over",self,"game_over")
	yield(get_tree().create_timer(1),"timeout")
	actualizar_datos()

func _get_configuration_warning() -> String:
	if numero_nivel == 0 or proximo_nivel =="":
		return "Chequear valores de nivel"
	return ""

func game_over():
	DatosJuego.nivel_actual = nivel_actual
	get_tree().change_scene(menu_game_over)

func actualizar_datos()-> void:
	DatosJuego.nivel_actual = get_tree().current_scene.filename
	DatosJuego.num_nivel_actual = numero_nivel
	DatosJuego.nivel_proximo = proximo_nivel
