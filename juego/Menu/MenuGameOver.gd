extends Control

var nivel_actual =""

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	nivel_actual = DatosJuego.nivel_actual
	DatosJuego.reset()


func _on_BotonMenuPrincipal_pressed() -> void:
	pass
	#get_tree().change_scene(copiar ruta menu principal)


func _on_BotonReintentar_pressed() -> void:
	get_tree().change_scene(nivel_actual)
