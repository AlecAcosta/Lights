/// @description update lights and shadows
if (! surface_exists(surf)){
	surf = createSurf()
}
surface_set_target(surf)

draw_clear(c_black)

if object_exists(obj_light){
    with (obj_light){
        gpu_set_blendmode(bm_src_colour)
        draw_sprite_ext(spr_light,0,x*other.surfScale,y*other.surfScale,lightSize*other.surfScale,lightSize*other.surfScale,0,c_white,lightAlpha)
        gpu_set_blendmode(bm_normal)
    }
}

surface_reset_target()
draw_surface_ext(surf,0,0,1/surfScale,1/surfScale,0,c_white,darkness)

//debug
var sep = 32

draw_text(sep,sep,"Reset: Space")
draw_text(sep,sep*2,"Add light: Left click")
draw_text(sep,sep*3,"Add flickering light: Right click")
draw_text(sep,sep*4,"Delete light: Middle click")
draw_text(sep,sep*5,"Switch day/night: M")