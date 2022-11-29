#PantallaCarga.gd
extends Control


func _on_Timer_timeout() -> void:
	if OS.get_name() in DatosConfiguracion.OS_ADMITIDOS_THREADS:
		CargaSegundoPlano.cargar_nivel(DatosJuego.nivel_actual)
	else:
		print(OS.get_name())
		get_tree().change_scene(DatosJuego.nivel_actual)
