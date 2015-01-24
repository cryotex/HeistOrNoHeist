var h_move = gamepad_axis_value(playerNumber, gp_axislh);
var v_move = gamepad_axis_value(playerNumber, gp_axislv);

if( gamepad_button_check_pressed(playerNumber, gp_face1)){
    scrHandleThrowable();
}

if (abs(h_move) == abs(v_move) ){
    
}else if (abs(h_move) > abs(v_move) ){
    if (h_move > 0){
        scrPlayerMoveX(movementSpeed)
    }else if (h_move < 0){
        scrPlayerMoveX(-movementSpeed)
    }
} else if (abs(v_move) > abs(h_move)){
    if (v_move > 0){
        scrPlayerMoveY(movementSpeed)
    }else if (v_move < 0){
        scrPlayerMoveY(-movementSpeed)
    }
}

    x += hspeed;
    y += vspeed;
    hspeed = scrApplyFriction(hspeed);
    vspeed = scrApplyFriction(vspeed);

with(handIndex){
    if (other.hspeed != 0){
        if (other.hspeed > 0){
            x = other.x + other.sprite_width/2+sprite_width/2;
            y = other.y;
            image_angle = 180;
            other.playerDirection = "right";
        }else if(other.hspeed < 0){
            x = other.x - other.sprite_width/2-sprite_width/2;
            y = other.y;
            
            image_angle = 0;
            other.playerDirection = "left";
        }
    }else{
        if (other.vspeed > 0){
            y = other.y + other.sprite_height/2+sprite_width/2;
            x = other.x;
            image_angle = 270;
            other.playerDirection = "down";
        }else if (other.vspeed < 0){
            x = other.x;
            y = other.y - other.sprite_height/2-sprite_width/2;
            image_angle = 90;
            other.playerDirection = "up";
        }
    }
    
    if (other.currentObject != false){
        with(other.currentObject){
            x = other.x;
            y = other.y;
        }
    }
}
