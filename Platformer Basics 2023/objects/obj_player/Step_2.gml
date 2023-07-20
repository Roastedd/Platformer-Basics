///@desc Set Animations

//Adjust sprite 
frameSpeed = 0.2;
xScale = approach(xScale, 1, 0.035);
yScale = approach(yScale, 1, 0.035);

xPos = x;
yPos = y;

frame_reset();

if (hsp > 0) {
    facing = 1;	
} else if (hsp < 0) {
    facing = -1;	
}


if (!on_ground) {
    if (on_wall != 0) {
        sprite = spr_player_wall;
        facing = on_wall; // left wall -1, on right 1
    } else { 
        sprite = spr_player_air;
        frameSpeed = 0;
        frame = (vsp > 0);
    }
} else {
    if (hsp != 0) {
        frameSpeed = abs(hsp) * 0.08;
        sprite = spr_player_run;

        // Check for footstep frames (every 2 and 8 frames)
        if (floor(frame) != lastFrame) {
            if (floor(frame) == 2 || floor(frame) == 8) {
                var s_step = audio_play_sound(snd_step, 1, false);
                audio_sound_pitch(s_step, random_range(1.5, 2));
                audio_sound_gain(s_step, random_range(0.3, 0.6), 0);
            }
        }
    } else {
        sprite = spr_player_idle;	
    }
}



//reset frame to 0 if sprite changes
if (lastSprite != sprite) {
    lastSprite = sprite;
    frame = 0;
}

lastFrame = floor(frame);
