/// @description 
// Get current message data
var _arr = messages[| messageID];

// Draw textbox
draw_9slice(x, y, width, height, sTextbox, 0);

// Draw position
var _drawX = x + padding;
var _drawY = y + padding;

// Text color
draw_set_color(c_white);

// Get maximum width for text
var _maxW = width - (_drawX + padding);

// Draw text
draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);

// Reset
draw_set_color(c_white)