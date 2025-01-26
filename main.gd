extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_screen_grab_pressed() -> void:
	var window:Window = $Window
	var saveDialog:FileDialog = $SaveDialog
	saveDialog.show()
	await saveDialog.file_selected
	var file:String = saveDialog.get_current_file()
	await RenderingServer.frame_post_draw
	window.get_texture().get_image().save_png(file)


func _on_texture_display(node:Node) -> void:
	var window:Window = $Window
	for child:Node in window.get_children():
		child.queue_free()
	node.size = window.size
	window.add_child(node)


func _on_space_display(node:Node) -> void:
	var window:Window = $Window
	for child:Node in window.get_children():
		child.queue_free()
	window.add_child(node)
