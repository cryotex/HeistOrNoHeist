var itemValue = other.value;
// add score to player who owns item
var itemOwner = other.ownerID;
with(other){
    instance_destroy();
}

var ownerNumber = 0;
with(itemOwner){
    currentObject = 0;
    ownerNumber = playerNumber;
}

player_scores[ownerNumber] += itemValue;
audio_play_sound(sndReward, 2, false);