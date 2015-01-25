
    hspeed = 0;
    
    var newSpeed = vspeed +argument0;
    var newCollideX = x;
    var newCollideY = y+newSpeed;
    
    if (vspeed > 0){
        //image_angle = 180;
        newCollideY +=sprite_height/2;
        playerDirection = 2;
    }else if (vspeed < 0){
        //image_angle = 0 ;
        newCollideY -=sprite_height/2;
        playerDirection = 3;
    }
    
    var collidingWallTest = instance_place(newCollideX, newCollideY, objWalls);
    if (collidingWallTest != 0){
        with(collidingWallTest){
            if(newSpeed > 0 and newCollideY < y){
                other.y = (y-sprite_height/2)-(other.sprite_height/2)
            }else if(newSpeed < 0 and newCollideY > y){
                other.y = (y+sprite_height/2)+(other.sprite_height/2)
            }
            other.vspeed = 0;
            //scrUpdateHands(other.handIndex, other.currentObject);
            return 0;
        }
    }
    
    var pushableTest = instance_place(newCollideX, newCollideY, objPushable);
    if (pushableTest != noone){
        with(pushableTest){ 
            if(newSpeed > 0 and newCollideY < y){
                other.y = (y-sprite_height/2)-(other.sprite_height/2) 
                scrPushableCheck(self, 0, 2);
            }else if(newSpeed < 0 and newCollideX > y){
                other.y = (y+sprite_height/2)+(other.sprite_height/2)
                scrPushableCheck(self, 0, -2);
            } 
        }
        vspeed = 0;
        scrUpdateHands(handIndex, currentObject); 
        return 0;
    }
    
    var collidingObject;
    collidingObject = instance_place(newCollideX, newCollideY, objBaseThrowable);
    
    if (collidingObject != currentObject){
        if (collidingObject != 0){
            with(collidingObject){
                if(newSpeed > 0 and newCollideY < y) or (newSpeed < 0 and newCollideY > y){
                    other.vspeed = 0;
                    return 0;
                }
            }  
        }
    }
    
    if (newSpeed < maxSpeed and newSpeed > -maxSpeed )
    {
        vspeed += argument0;
    }else{
        if (argument0 > 0)
        {
            vspeed = maxSpeed;
        }else{
            vspeed = -maxSpeed;
        }
    }