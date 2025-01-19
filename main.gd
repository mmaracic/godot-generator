extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_display(textureRect:TextureRect) -> void:
	var window:Window = $Window
	for child:Node in window.get_children():
		child.queue_free()
	textureRect.size = window.size
	window.add_child(textureRect)
	print(textureRect.position, textureRect.size, textureRect.visible)
