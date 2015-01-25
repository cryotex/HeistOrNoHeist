var pushableItem = argument0;
var player = argument1;
var xSpeed = argument2;
var ySpeed = argument3;

var newCollideX = pushableItem.x + (xSpeed*speedMultiplier);
var newCollideY = pushableItem.y + (ySpeed*speedMultiplier);

var collidingObject;
collidingObject  = instance_place(newCollideX, newCollideY, objBaseThrowable);
if (collidingObject == false or collidingObject==noone){
collidingObject  = instance_place(newCollideX, newCollideY, objPushable);
}
 if (collidingObject == false or collidingObject==noone){
    pushableItem.x = newCollideX;
    pushableItem.y = newCollideY;
 }
 
 if((other.id != owner1) and (other.id != owner2)){
    owner2 = owner1;
    owner1 = other.id;
 }else if (other.id == owner2){
    owner2 =  owner1;
    owner1 = other.id;
 }
