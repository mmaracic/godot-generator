extends Experiment


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_new_pressed() -> void:
	var space:Node = preload("res://space.tscn").instantiate()
	display.emit(space)
