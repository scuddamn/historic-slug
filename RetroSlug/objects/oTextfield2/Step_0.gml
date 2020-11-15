/// @description Insert description here
// You can write your code in this editor

if (string_length(keyboard_string)<limit) {
    message = keyboard_string;
} else {
    keyboard_string = message;
}



if (obscure == 1){
	oDragonObscure.image_alpha += 1/room_speed;
}


if(obscure == -1){
	oDragonObscure.image_alpha -= 1/room_speed;
}