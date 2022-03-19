function dialogue_play_letter(letter, base_pitch) 
{
    // IMPORTANT!
	// CHECK THE ORIGINAL CREATOR OF THE CODE WRITTEN IN PYTHON:
	// https://github.com/equalo-official/animalese-generator
	
    letter = string_lower(letter);
    var keys = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","th","sh"," ","."];
    
    // Finds for the current letter index
    var i = 0; repeat (array_length(keys))
    {
        if (keys[i] == letter) break;
        
        i++;
    }
    
    // Stops the script and returns false if the letter wasn't found
    if (i >= array_length(keys)) return false;
    var sound = asset_get_index("sound" + string(i));
    
    // Plays the audio and creates an instance that is responsible to speed it up
    audio_play_sound(sound, 1, false);
    audio_sound_pitch(sound, base_pitch + random_range(-0.1, 0.1));
    
    // Returns true if script was executed with success
    return true;
    

    
}