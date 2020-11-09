/// inputs
// You can write your code in this editor


//when left mouse button is pressed
if(mouse_check_button(mb_left)){
	image_angle = point_direction(x, y, mouse_x, mouse_y); //rotate slug to face mouse
	//slug won't move while mouse is pressed
	xvel = 0;
	yvel = 0;
	
	
	
	//set sprite to show slug building up to move
	sprite_index = sContract;
	//if(image_index >= 2) {
		//image_speed = 0;
		//}

}

//when left mouse button is released
if(mouse_check_button_released(mb_left)){
	
	//move slug
	xvel = cos(degtorad(image_angle)) * slugspeed;
	yvel = -sin(degtorad(image_angle)) * slugspeed;
	
	//set sprite to slug releasing
	sprite_index = sSlug;
	//if(image_index >= 2){
		//image_speed = 0;
	//}

}

//movement
x += xvel;
y += yvel;


//make slug slow down after movement
if(abs(xvel) > 0) || (abs(yvel) >0) {
	xvel -= cos(degtorad(image_angle)) * slugdrag;
	yvel -= -sin(degtorad(image_angle)) * slugdrag;
}


//keep player inside map
if (x < 15) x = 15;
if (x > room_width - 15) x = room_width - 15;
if (y < 15) y = 15;
if (y > room_height - 15) y = room_height - 15;
