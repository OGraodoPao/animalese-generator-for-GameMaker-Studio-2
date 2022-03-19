/// @description 
// Get current message
var _arr = messages[| messageID];

var _text = _arr[MSG.TEXT];

// Confirmation key
var pressed = keyboard_check_pressed(vk_enter);

// Get message string
messageText = string_copy(_text, 1, messageChar);

// String not fully drawn
if (messageChar <= string_length(_text)) 
{
	previous_letter = floor(messageChar);
	
	messageChar += messageSpeed;
	
	if (previous_letter != messageChar) 
	{
		dialogue_play_letter(string_char_at(messageText, floor(messageChar)), 1.5);
	}
	
	// Jumps the dialogue to the end
	if (pressed)
	{
		messageChar = string_length(_text);
	}
}
else if (!pressed) 
{
	// Finished talking
	talk_frame = 0;
}
else if (pressed) 
{
	// String fully drawn
	// Go to next message
	if (messageID < ds_list_size(messages) - 1) 
	{
		messageID++;
		messageChar = 0;
	}
	// Close textbox
	else 
	{
		instance_destroy();
	}
}

