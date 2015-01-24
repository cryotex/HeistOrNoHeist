vspeed = 0;

var newSpeed = hspeed +argument0;
var newCollideX = x+hspeed;
var newCollideY = y;

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
