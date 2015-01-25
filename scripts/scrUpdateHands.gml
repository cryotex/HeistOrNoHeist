with(argument0){
    if (other.hspeed != 0){
        if (other.hspeed > 0){
            image_angle = 90;
            other.image_angle = image_angle;
            other.playerDirection = 1;
        }else if(other.hspeed < 0){
            image_angle = 270;
            other.image_angle = image_angle;
            other.playerDirection = 0;
        }
    }else{
        if (other.vspeed > 0){
            image_angle = 0;
            other.image_angle = image_angle;
            other.playerDirection = 2;
        }else if (other.vspeed < 0){
            image_angle = 180;
            other.image_angle = image_angle;
            other.playerDirection = 3;
        }
    }
        
    if(other.playerDirection==1){
        x = other.x + other.sprite_width/2-3;
        y = other.y;
    }else if(other.playerDirection==0){
        x = other.x - other.sprite_width/2+3;
        y = other.y;
    }else if(other.playerDirection==3){
        x = other.x;
        y = other.y - other.sprite_width/2+3;
    }else if(other.playerDirection==2){
        x = other.x;
        y = other.y + other.sprite_width/2-3;
    }
    
    if (argument1 != false){
        with(argument1){
            image_angle = other.image_angle;
            x = other.x;
            y = other.y;
        }
    }
}