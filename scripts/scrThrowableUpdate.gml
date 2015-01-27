var collideX = x + hspeed;
var collideY = y + vspeed;

var pushableTest = instance_place(collideX, collideY, objPushable);
var wallTest = instance_place(collideX, collideY, objWalls);
var throwableTest = instance_place(collideX, collideY, objBaseThrowable);

if (pushableTest!= false and pushableTest != noone){
    wallCollisionSound = audio_play_sound(sndWallHit, 0, false);
    scrThrowableCollisionCheck(pushableTest);
    return 0;
} else if (wallTest!= false and wallTest != noone){
    wallCollisionSound = audio_play_sound(sndWallHit, 0, false);
    scrThrowableCollisionCheck(wallTest);
    return 0;
} else if (throwableTest!= false and throwableTest != noone) {
    wallCollisionSound = audio_play_sound(sndWallHit, 0, false);
    scrThrowableCollisionCheck(throwableTest);
    return 0;
}else {
    x = collideX;
    y = collideY;
}


hspeed = scrApplyFriction(hspeed);
vspeed = scrApplyFriction(vspeed);
