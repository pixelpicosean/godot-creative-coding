extends SketchBase

func sketch(width: float, height: float) -> void:
	var stroke_color := Color.black
	var line_width := width * 0.01

	var rows := 5
	var cols := 5

	var ix := width * 0.17
	var iy := width * 0.17
	var gap := width * 0.03
	var w := (width - ix * 2 - (cols - 1) * gap) / cols
	var h := (height - iy * 2 - (rows - 1) * gap) / rows

	var off := line_width * 2

	var x: float
	var y: float

	for r in rows:
		for q in cols:
			x = ix + (w + gap) * q
			y = iy + (h + gap) * r

			draw_rect(
				Rect2(x, y, w, h),
				stroke_color,
				false,
				line_width
			)

			if randf() > 0.5:
				draw_rect(
					Rect2(x + off * 0.5, y + off * 0.5, w - off, h - off),
					stroke_color,
					false,
					line_width
				)
