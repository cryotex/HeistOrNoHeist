hspeed = 0;

var newSpeed = vspeed +argument0;
var newCollideX = x;
var newCollideY = y+vspeed;

if (vspeed > 0){
    newCollideY +=sprite_height/2;
}else if (vspeed < 0){
    newCollideY -=sprite_height/2;
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