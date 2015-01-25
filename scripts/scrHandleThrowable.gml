var player = argument0;
var throwSpeed = argument1;

with(player){

    if (currentObject == false){
        with(handIndex){
            var collidedObject = instance_place(x, y ,objBaseThrowable);
            if (collidedObject == noone){
                other.currentObject = false;
                
            }else{
                audio_play_sound(sndPickup, 2, false);
                other.maxSpeed = 3.5;
                other.currentObject = collidedObject;
                with(other.currentObject){
                    mask_index = sprEmpty;
                }
            }
        }
        with(currentObject){
            ownerID = other.id
        }
    }
    else{
        audio_play_sound(sndThrow, 2, false);
    
        with(currentObject){
            if (other.playerDirection == -0){
                hspeed = -throwSpeed*2;
            }else if (other.playerDirection == 1){
                hspeed = throwSpeed*2;
            }else if (other.playerDirection == 3){
                vspeed = -throwSpeed*2;
            }else if (other.playerDirection == 2){
                vspeed = throwSpeed*2;
            }        
        }
        
        with(currentObject){
            mask_index = sprThrowable;
        }
        maxSpeed = 5;
        currentObject = false;
    }
}