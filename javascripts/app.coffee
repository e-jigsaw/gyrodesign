$(document).ready ->
	x = $("#x")
	y = $("#y")
	t = [
		$("#t1")
		$("#t2")
		$("#t3")
		$("#t4")
		$("#t5")
		$("#t6")
	]
	dataHandler = (ev)->
		data = ev.accelerationIncludingGravity
		x.text "x: #{data.x}"
		y.text "y: #{data.y}"
		for el in t
			el.css "transform", "translate(#{data.x * 5}px, #{data.y * 5}px)"

	window.addEventListener "devicemotion", dataHandler, true