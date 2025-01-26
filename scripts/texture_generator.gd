class_name TextureGenerator
extends Object

class Gaussian2D:
	var origin:Vector2
	var sigma:Vector2
	

static func drawRect(image:Image, leftTop:Vector2, rightBottom:Vector2, color:Color) -> void:
	for x in range(leftTop[0], rightBottom[0]):
		for y in range(leftTop[1], rightBottom[1]):
			image.set_pixel(x, y, color)
