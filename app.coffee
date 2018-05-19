layerA = new BackgroundLayer
	backgroundColor: "#d6d6d6"

start = new Layer
	width: 222
	x: 2142
	y: 565
	
#Numbers
_1 = new Layer
	width: 11
	height: 23
	image: "images/1.png"
	x: 100
	y: 476

_2 = new Layer
	width: 16
	height: 24
	image: "images/2.png"
	x: 582
	y: 559

_3 = new Layer
	width: 16
	height: 25
	image: "images/3.png"
	x: 413
	y: 126

_4 = new Layer
	width: 18
	height: 23
	image: "images/4.png"
	x: 851
	y: 476
	
_5 = new Layer
	width: 17
	height: 24
	image: "images/5.png"
	x: 449
	y: 500
	
_6 = new Layer
	width: 18
	height: 24
	image: "images/6.png"
	x: 537
	y: 777 

num_array = [_1, _2, _3, _4, _5, _6]
for i in num_array
	i.opacity = 0	
	
#Feet

left_1 = new Layer
	width: 100
	height: 263
	image: "images/left_foot.png"
	x: 100
	y: 637
	opacity: 0
	
right_1 = new Layer
	width: 100
	height: 256
	image: "images/right_foot.png"
	x: 224
	y: 637
	opacity: 0

left_2 = new Layer
	width: 100
	height: 263
	image: "images/left_foot.png"
	x: 100 
	y: 100
	opacity: 0

right_2 = new Layer
	width: 100
	height: 256
	image: "images/right_foot.png"
	x: 676+124
	y: 100
	opacity: 0

left_3 = new Layer
	width: 100
	height: 263
	image: "images/left_foot.png"
	x: 676 
	y: 100
	opacity: 0
# 
right_3 = new Layer
	width: 100
	height: 256
	image: "images/right_foot.png"
	x: 800
	y: 644
	opacity: 0

#Lines

Line_1 = new Layer
	width: 11
	height: 231
	image: "images/Line_1.png"
	x: 155
	y: 367 
	opacity: 0

Line_2 = new Layer
	width: 499
	height: 290
	image: "images/Line_2.png"
	x: 311
	y: 375
	opacity: 0
	

Line_3 = new Layer
	width: 433
	height: 11
	image: "images/Line_3.png"
	x: 224
	y: 181
	opacity: 0

Line_4 = new Layer
	width: 11
	height: 238
	image: "images/Line_4.png"
	x: 850
	y: 387
	opacity: 0
	
Line_5 = new Layer
	width: 462
	height: 283
	image: "images/Line_5.png"
	x: 222
	y: 343
	opacity: 0

Line_6 = new Layer
	width: 433
	height: 11
	image: "images/Line_6.png"
	x: 348
	y: 768
	opacity: 0


#Functions

flash = (layer) ->
	layer.animate 
		properties:
			opacity: 1
		time: 0.3
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"	
	Utils.delay 0.3, ->
		layer.animate 
			properties:
				opacity: 0.1 
			time: 0.6
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"

flash_2 = (layer) ->
	layer.animate 
		properties:
			opacity: 1
		time: 0.6
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"	
			
grow = (layer, dir) ->
	OLDH = layer.height
	OLDY = layer.y
	layer.y = OLDH + OLDY
	layer.height = 0
	
	layer.animate 
		properties:
			y: OLDY 
			height: OLDH
			opacity: 1
		time: 0.6
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"		
		
grow_2 = (layer) ->	
	OLDH = layer.height 
	OLDW = layer.width 
	OLDY = layer.y
	layer.height = 0
	layer.width = 0
	layer.y = OLDY + OLDH
	layer.opacity = 1
	
	layer.animate
		properties:
			width: OLDW 
		time: 0.6
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Utils.delay 0.2, ->
		layer.animate
			properties:
				height: OLDH 
				y: OLDY 
			time: 0.6
			curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"						

grow_3 = (layer) ->
	OLDW = layer.width
	layer.width = 0
	layer.opacity = 1
	
	layer.animate
		properties:
			width: OLDW
		time: 0.6
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"

grow_4 = (layer) ->	
	OLDH = layer.height
	layer.height = 0
	layer.opacity = 1
	layer.animate
		properties: 
			height: OLDH 
		time: 0.6
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"	

grow_5 = (layer) ->
	OLDH = layer.height 
	OLDW = layer.width 
	OLDX = layer.x
	layer.height = 0
	layer.width = 0
	layer.x = OLDX + OLDW
	layer.opacity = 1
	
	layer.animate
		properties:
			width: OLDW 
			x: OLDX
		time: 0.6
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Utils.delay 0.2, ->
		layer.animate
			properties:
				height: OLDH 
			time: 0.6
			curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"				

grow_6 = (layer) ->
	OLDW = layer.width
	OLDX = layer.x 
	layer.width = 0
	layer.x = OLDW + OLDX 
	layer.opacity = 1
	layer.animate
		properties:
			width: OLDW 
			x: OLDX 
		time: 0.6
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"	

start.onClick ->
	flash(left_1)
	
	Utils.delay 0.3, ->
		
		flash(right_1)
	
	Utils.delay 0.6, ->
		flash(left_2)
		
		Utils.delay 0.6, ->
			flash(right_2)
			
			Utils.delay 0.6, ->
				flash(left_3)
				
				Utils.delay 0.6, ->
					flash(right_3)
					
					Utils.delay 0.6, ->
						flash(left_1)
						
						Utils.delay 0.3, ->
							flash(right_1)
						
						Utils.delay 0.6, ->
							flash_2(left_2)
							grow(Line_1)
							flash_2(_1)
							
							Utils.delay 0.6, ->
								flash_2(right_2)
								grow_2(Line_2)
								flash_2(_2)
								
								Utils.delay 0.6, ->
									flash_2(left_3)
									grow_3(Line_3)
									flash_2(_3)
									
									Utils.delay 0.6, ->
										flash_2(right_3)
										grow_4(Line_4)
										flash_2(_4)
									
										Utils.delay 0.6, ->
											flash_2(left_1)
											grow_5(Line_5)
											flash_2(_5)
											
											Utils.delay 0.6, ->
												flash_2(right_1)
												grow_6(Line_6)
												flash_2(_6)
					
