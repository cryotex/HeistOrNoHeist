
// add score to player who owns item
var ownerCount = 1;
if(other.owner2!= false){
    ownerCount = 2;
}
var itemValuePerPlayer = other.value / ownerCount;
with(other){
    instance_destroy();
}

var owner1Number = 0;
with(other.owner1){
    owner1Number = playerNumber;
}
player_scores[owner1Number] += itemValuePerPlayer;

if(ownerCount>1){
    var owner2Number = 0;
    with(other.owner2){
        owner2Number = playerNumber;
    }
    player_scores[owner2Number] += itemValuePerPlayer;

}
