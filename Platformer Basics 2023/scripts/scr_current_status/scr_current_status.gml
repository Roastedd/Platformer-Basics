// Create a persistent variable to store the previous on_ground state
if (!variable_global_exists("prev_on_ground")) {
    global.prev_on_ground = false;
}

function scr_current_status() {
    // Calculate if on ground
    on_ground = place_meeting(x, y + groundbuffer, obj_block);
    
    if (on_ground) {
        jumpbuffer = init_jumpbuffer;
    }
    
    // Check if the player just landed (transition from not being on ground to being on ground)
    if (!global.prev_on_ground && on_ground) {
        // Play landing sound here
        var s_land = audio_play_sound(snd_attack, 1, false);
        // Adjust pitch and gain of the landing sound based on vertical speed (vsp)
        var landing_gain = clamp(abs(vsp) * 0.01, 0.1, 1); // Adjust the 0.01 factor as needed
        var minimum_gain = 0.3; // Adjust the minimum gain as needed
        
        landing_gain = max(landing_gain, minimum_gain); // Ensure landing_gain is at least minimum_gain
        
        audio_sound_pitch(s_land, 2); // You can adjust the pitch if necessary
        audio_sound_gain(s_land, landing_gain, 0);
    }
    
    // Update the previous on_ground state for the next frame
    global.prev_on_ground = on_ground;
    
    on_wall = place_meeting(x + 1, y, obj_block) - place_meeting(x - 1, y, obj_block);
}
