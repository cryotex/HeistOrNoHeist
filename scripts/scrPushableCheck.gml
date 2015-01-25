var pushableItem = argument0;
var xSpeed = argument1;
var ySpeed = argument2;

var newCollideX = pushableItem.x + xSpeed;
var newCollideY = pushableItem.y + ySpeed;

var collidingObject;
collidingObject  = instance_place(newCollideX, newCollideY, objBaseThrowable);
 
 if (collidingObject == false or collidingObject==noone){
    pushableItem.x = newCollideX;
    pushableItem.y = newCollideY;
 }