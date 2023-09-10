extends CSGBox3D

var layer: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameManager.player.position.x > position.x:
		set_to_background()
	else:
		set_to_forground()


func set_to_forground() -> void:
	if layer != 2:
		layer = 2
		set_layer_mask_value(1, false)
		set_layer_mask_value(2, true)


func set_to_background() -> void:
	if layer != 1:
		layer = 1
		set_layer_mask_value(1, true)
		set_layer_mask_value(2, false)
