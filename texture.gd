extends Panel

var image:Image
var imageTexture:ImageTexture
var textureRect:TextureRect

signal display


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_new_pressed() -> void:
	init()
	
	
func init() -> void:
	#image = Image.create_empty(640, 480, false, Image.FORMAT_RGBA8)
	image = Image.load_from_file("res://assets/philipp-dusel-vNVwg35VZrg-unsplash.jpg")
	imageTexture = ImageTexture.create_from_image(image)
	textureRect = TextureRect.new()
	textureRect.expand_mode = TextureRect.EXPAND_FIT_WIDTH
	textureRect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT
	textureRect.set_anchors_preset(Control.PRESET_TOP_LEFT)
	textureRect.texture = imageTexture
	#textureRect.draw_line(Vector2(0,0), Vector2(100,100), Color.WEB_GREEN)
	display.emit(textureRect)
	


func _on_generate_pressed() -> void:
	#if (textureRect == null):
		init()
		
	#imageTexture.update(image)
