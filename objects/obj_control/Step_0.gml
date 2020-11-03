/// @description controls
if keyboard_check_pressed(vk_escape){
	game_end()
}

if keyboard_check_pressed(vk_space){
	game_restart()
}

if mouse_check_button_pressed(mb_left){
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_light)
}

if mouse_check_button_pressed(mb_right){
	with instance_create_layer(mouse_x,mouse_y,"Instances",obj_light){
		flickering = true
	}
}

if mouse_check_button_pressed(mb_middle){
	if instance_exists(obj_light){
		var light = instance_nearest(mouse_x,mouse_y,obj_light)
		with light{
			instance_destroy()
		}
	}
}

if keyboard_check_pressed(ord("M")){
	if (day == true){
	    day = false
	}
	else {
	    day = true
	}
}

//this line was made to view the size of the drawn surface
//camera_set_view_pos(view_camera[0],device_mouse_x_to_gui(0)-camera_get_view_width(view_camera[0])/2,device_mouse_y_to_gui(0)-camera_get_view_height(view_camera[0])/2)