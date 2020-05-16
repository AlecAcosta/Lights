/// @description flicker
if (flickering == true){
    lightSize += choose(0.1,-0.1,0)
    lightSize = clamp(lightSize,first_lightSize,first_lightSize+1)
}