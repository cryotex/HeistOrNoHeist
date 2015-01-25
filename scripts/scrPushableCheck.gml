var pushableItem = argument0;
var player = argument1;
var xSpeed = argument2;
var ySpeed = argument3;

var newCollideX = pushableItem.x + xSpeed;
var newCollideY = pushableItem.y + ySpeed;

var collidingObject;
collidingObject  = instance_place(newCollideX, newCollideY, objBaseThrowable);
if (collidingObject == false or collidingObject==noone){
collidingObject  = instance_place(newCollideX, newCollideY, objPushable);
}
 if (collidingObject == false or collidingObject==noone){
    pushableItem.x = newCollideX;
    pushableItem.y = newCollideY;
 }
 
 if((player.id != pushableItem.owner1) or (player.id != pushableItem.owner2)){
    pushableItem.owner1 = pushableItem.owner2;
    pushableItem.owner2 = player.id;
 }else if (player.id == pushableItem.owner2){
    pushableItem.owner2 =  pushableItem.owner1;
    pushableItem.owner1 = player.id;
 }