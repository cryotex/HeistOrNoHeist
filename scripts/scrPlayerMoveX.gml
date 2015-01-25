
    vspeed = 0;
    var newSpeed = hspeed + argument0;
    var newCollideX = x+newSpeed;
    var newCollideY = y;
    
    if (hspeed  > 0) {
        //image_angle = 90;
        newCollideX +=sprite_width/2;
        playerDirection = 1;
        image_angle = 90;
    }else if (hspeed < 0){
        //image_angle = 270;
        newCollideX -=sprite_width/2;
        playerDirection = 0;
        image_angle = 270;
    }
    
    var collidingWallTest = instance_place(newCollideX, newCollideY, objWalls);
    if (collidingWallTest != noone){
        with(collidingWallTest){ 
            if(newSpeed > 0 and newCollideX < x){
                other.x = (x-sprite_width/2)-(other.sprite_width/2) 
            }else if(newSpeed < 0 and newCollideX > x){
                other.x = (x+sprite_width/2)+(other.sprite_width/2)
            } 
        }
        hspeed = 0;
       //scrUpdateHands(handIndex, currentObject); 
        return 0;
    }
    
    
    var pushableTest = instance_place(newCollideX, newCollideY, objPushable);
    if (pushableTest != noone){
        with(pushableTest){ 
            if(newSpeed > 0 and newCollideX < x){
                other.x = (x-sprite_width/2)-(other.sprite_width/2) 
                if(other.currentObject==false or other.currentObject==noone){
                    scrPushableCheck(self, other, 1, 0);
                }
            }else if(newSpeed < 0 and newCollideX > x){
                other.x = (x+sprite_width/2)+(other.sprite_width/2)
                if(other.currentObject==false or other.currentObject==noone){
                    scrPushableCheck(self, other, -1, 0);
                }
            } 
        }
        hspeed = 0;
        scrUpdateHands(handIndex, currentObject); 
        return 0;
    }
    var collidingObject;
    collidingObject = instance_place(newCollideX, newCollideY, objBaseThrowable);
    
    if (collidingObject != currentObject){
        if (collidingObject != 0){
          with(collidingObject){
                if((newSpeed > 0 and newCollideX < x) or (newSpeed < 0 and newCollideX > x)){
                    other.hspeed = 0;
                    return 0;
                }
            }  
        }
    }
    
    if (newSpeed < maxSpeed and newSpeed > -maxSpeed )
    {
        hspeed += argument0;
    }else{
        if (argument0 > 0)
        {
            hspeed = maxSpeed;
        }else{
            hspeed = -maxSpeed;
        }
    }
