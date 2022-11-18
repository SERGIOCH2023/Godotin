# MonedaDorada.gd
class_name Moneda
extends Area



func _on_body_entered(body: Node) -> void:
	$Colisionador.set_deferred("disable", true)
	$AnimationPlayer.play("consumida")
