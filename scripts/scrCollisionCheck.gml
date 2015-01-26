var objectID = argument0;

    if (abs(hspeed) > 0){
        if (hspeed > 0 ){
            with(objectID){
                other.x = x - sprite_width/2 - other.sprite_width/2;
            }
        }else if (hspeed < 0){
            with(objectID){
                other.x = x + sprite_width/2 + other.sprite_width/2;
            }
        }
    }else if (abs(vspeed) > 0){
        if (vspeed > 0 ){
            with(objectID){
                other.y = y - sprite_height/2 - other.sprite_height/2;
            }
        }else if (vspeed < 0){
            with(objectID){
                other.y = y + sprite_height/2 + other.sprite_height/2;
            }
        }
    }
   hspeed = 0;
   vspeed = 0;
   return 0;
