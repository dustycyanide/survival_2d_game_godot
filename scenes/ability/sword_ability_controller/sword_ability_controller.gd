extends Node

@export var sword_ability: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.timeout.connect(on_timer_timeout)


func on_timer_timeout():
	var enemies = get_tree().get_nodes_in_group("enemy")
	if enemies.size() == 0:
		return
	var sword_instance = sword_ability.instantiate() as Node2D
	#player.get_parent().add_child(sword_instance)
	#sword_instance.global_position = player.global_position
