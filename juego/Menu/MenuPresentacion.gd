#MenuPresentacion.gd
tool
extends Control

export(String, FILE, "*.tscn") var menu_inicial =""

func _get_configuration_warning() -> String:
	if menu_inicial=="":
		return "No Hay menu inicial asignado"
	return ""

func cargar_menu()-> void:
	get_tree().change_scene(menu_inicial)

func _ready() -> void:
	var cargar: GuardarCargar = GuardarCargar.new()
	cargar.cargar_datos_configuracion()
