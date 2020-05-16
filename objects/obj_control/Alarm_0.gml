/// @description day/night transition
if (day = true){
    darkness -= 0.01
}

else {
    darkness += 0.01
}

darkness = clamp(darkness,0,0.7)

alarm[0] = 10