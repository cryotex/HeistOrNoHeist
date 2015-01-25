var player = argument0;
var throwSpeed = argument1;

with(player){

    if (currentObject == false){
        with(handIndex){
            var collidedObject = instance_place(x, y ,objBaseThrowable);
            if (collidedObject == noone){
                other.currentObject = false;
                
            }else{
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
        with(currentObject){
            if (other.playerDirection == "left"){
                hspeed = -throwSpeed*2;
            }else if (other.playerDirection == "right"){
                hspeed = throwSpeed*2;
            }else if (other.playerDirection == "up"){
                vspeed = -throwSpeed*2;
            }else if (other.playerDirection == "down"){
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
