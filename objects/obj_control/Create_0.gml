/// @description setting the surface
view_enabled=true
view_visible[0]=true
camera_set_view_size(view_camera[0],room_width,room_height)


surfScale = 1/10

createSurf = function(){
	return surface_create(surfScale*room_width,surfScale*room_height)
}

day = false

surf = createSurf()

darkness = 0.7

alarm[0] = 10


// If lights appear pixelated in your project (and you don't want to)
// turn on "interpolate colours between pixels" in Game options or change the surfScale (surfScale 1/1 = highest resolution)

