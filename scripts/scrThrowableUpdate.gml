var collideX = x + hspeed;
var collideY = y + vspeed;

var pushableTest = instance_place(collideX, collideY, objPushable);
if (pushableTest!= false and pushableTest != noone){
   scrCollisionCheck(pushableTest);
} else {
    x = collideX;
    y = collideY;
}

var wallTest = instance_place(collideX, collideY, objWalls);
if (wallTest!= false and wallTest != noone){
    scrCollisionCheck(wallTest);
} else {
    x = collideX;
    y = collideY;
}

hspeed = scrApplyFriction(hspeed);
vspeed = scrApplyFriction(vspeed);
