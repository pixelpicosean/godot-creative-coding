extends Control
class_name SketchBase

# public APIs

# @virtual, override this function to draw
func sketch(_width: float, _height: float) -> void:
	pass

func save_screenshot():
	var image := get_viewport().get_texture().get_data()
	image.flip_y()
	var folder := OS.get_system_dir(OS.SYSTEM_DIR_DOWNLOADS)
	image.save_png("%s/sketch.png" % folder)

# private

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("screenshot"):
		save_screenshot()

func _draw() -> void:
	sketch(rect_size.x, rect_size.y)
