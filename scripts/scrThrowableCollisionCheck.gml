var collidedID = argument0;

if (abs(hspeed) > 0){
    if (hspeed > 0 ){
        with(collidedID){
            other.x = x - sprite_width/2 - other.sprite_width/2;
        }
    }else if (hspeed < 0){
        with(collidedID){
            other.x = x + sprite_width/2 + other.sprite_width/2;
        }
    }
}else if (abs(vspeed) > 0){
    if (vspeed > 0 ){
        with(collidedID){
            other.y = y - sprite_height/2 - other.sprite_width/2;
        }
    }else if (vspeed < 0){
        with(collidedID){
            other.y = y + sprite_height/2 + other.sprite_width/2;
        }
    }
}
hspeed = 0;
vspeed = 0;
