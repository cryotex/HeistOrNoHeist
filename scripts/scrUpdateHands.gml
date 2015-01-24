with(argument0){
    if (other.hspeed != 0){
        if (other.hspeed > 0){
            x = other.x + other.sprite_width/2+sprite_width/2;
            y = other.y;
            image_angle = 180;
            other.playerDirection = "right";
        }else if(other.hspeed < 0){
            x = other.x - other.sprite_width/2-sprite_width/2;
            y = other.y;
            
            image_angle = 0;
            other.playerDirection = "left";
        }
    }else{
        if (other.vspeed > 0){
            y = other.y + other.sprite_height/2+sprite_width/2;
            x = other.x;
            image_angle = 270;
            other.playerDirection = "down";
        }else if (other.vspeed < 0){
            x = other.x;
            y = other.y - other.sprite_height/2-sprite_width/2;
            image_angle = 90;
            other.playerDirection = "up";
        }
    }
    if (argument1 != false){
        with(argument1){
            x = other.x;
            y = other.y;
        }
    }
}
