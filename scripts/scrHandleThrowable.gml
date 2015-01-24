if (currentObject == false){
    with(handIndex){
    
        var collidedObject = instance_place(x, y ,objBaseThrowable);
        if (collidedObject == noone){
            other.currentObject = false;
        }else{
            other.maxSpeed = 3.5;
            other.currentObject = collidedObject;
        }

    }
    with(currentObject){
        ownerID = other.id
    }
}
else{


    with(currentObject){
        if (other.playerDirection == "left"){
            hspeed = -movementSpeed*2;
        }else if (other.playerDirection == "right"){
            hspeed = movementSpeed*2;
        }else if (other.playerDirection == "up"){
            vspeed = -movementSpeed*2;
        }else if (other.playerDirection == "down"){
            vspeed = movementSpeed*2;
        }        
    }
    maxSpeed = 5;
    currentObject = false;
}