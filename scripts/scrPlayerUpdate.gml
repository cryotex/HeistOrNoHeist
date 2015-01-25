if (stunned == false ){
    if (not noPad){
        var h_move = gamepad_axis_value(playerNumber, gp_axislh);
        var v_move = gamepad_axis_value(playerNumber, gp_axislv);
        
        if( gamepad_button_check_pressed(playerNumber, gp_face1)){
            var throwSpeed = 0;
            with(currentObject){
                throwSpeed = movementSpeed;  
            }
            scrHandleThrowable(self, throwSpeed);
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
    }
    
        x += hspeed;
        y += vspeed;
        hspeed = scrApplyFriction(hspeed);
        vspeed = scrApplyFriction(vspeed);
        
        with(feetIndex){
            image_angle = other.image_angle;
            x=other.x;
            y=other.y;
            if (abs(other.hspeed) + abs(other.vspeed) > 0){
                image_speed = 2;
                if (audio_is_playing(footstepsSound) == false){
                footstepsSound = audio_play_sound(sndFootsteps, 2, true);
                }else{
                    audio_resume_sound(footstepsSound);
                }
            }else{
                image_speed = 0;
                audio_pause_sound(footstepsSound);
            }
        }
    
    scrUpdateHands(handIndex, currentObject);
} else {
    stunnedTime --;
    if(stunnedTime <= 0){
        stunned = false;
        image_index = 0;
        with(handIndex){
            visible = true;
        }
    }
}