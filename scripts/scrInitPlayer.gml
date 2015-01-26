//Set up player properties
sprite_xscale = 0.25;
sprite_yscale = 0.25;
image_speed = 0;

playerDirection = 2;

stunned = false;

noPad = false;

playerNumber = 0;

currentObject = 0;

maxSpeed = 5;
movementSpeed = 5;

friction=1;

hspeed = 0;
vspeed = 0;

handIndex = instance_create(sprite_width/2 + x, y, objPlayerHands);

feetIndex = instance_create(x, y, objPlayerFeet);

stunnedIndex = instance_create(x, y, objStunned);

with(stunnedIndex){
    visible = false;
}
