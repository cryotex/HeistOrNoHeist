var collideX = x + hspeed;
var collideY = y + vspeed;

var pushableTest = instance_place(collideX, collideY, objPushable);
if (pushableTest!= false and pushableTest != noone){
   hspeed = 0;
   vspeed = 0;
   return 0;
} else {
    x = collideX;
    y = collideY;
}

hspeed = scrApplyFriction(hspeed);
vspeed = scrApplyFriction(vspeed);
