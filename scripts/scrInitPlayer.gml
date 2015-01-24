//Set up player properties
playerDirection = "left";

pad_index = 0;

currentObject = 0;

maxSpeed = 5;
movementSpeed = 5;

friction=1;

hspeed = 0;
vspeed = 0;

handIndex = instance_create(sprite_width/2 + x, y, objPlayerHands);
