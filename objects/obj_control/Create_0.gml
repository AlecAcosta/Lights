/// @description setting the surface
surfScale = 1/15

createSurf = function(){
	return surface_create(room_width,room_height)
}

day = false

surf = createSurf()

darkness = 0.7

alarm[0] = 10


// If lights appear pixelated in your project (and you don't want to)
// turn on "interpolate colours between pixels" in Game options or change the surfScale (surfScale 1/1 = highest resolution)

