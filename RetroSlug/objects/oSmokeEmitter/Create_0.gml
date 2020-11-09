/// @description Insert description here
// You can write your code in this editor
/// @description Initialise Particles

global.P_System2 = part_system_create_layer("particles", false);	//Create the system and give it a name...
global.Particle2 = part_type_create();									//Create the particle and give it a name...

//Define the particle...
part_type_shape(global.Particle2, pt_shape_smoke);		//This defines the particles shape...
part_type_size(global.Particle2, .4, .4, .1, 1);			//This is for the size...
part_type_scale(global.Particle2, 1.5, 1);				//This is for scaling...
part_type_color1(global.Particle2, c_white);			//This sets its colour. There are three different codes for this...
part_type_alpha2(global.Particle2, .03, 0);					//This is its alpha. There are three different codes for this...
part_type_speed(global.Particle2, 0.50, 2, -0.10, 0);	//The particles speed...
part_type_direction(global.Particle2, 0, 359, 0, 20);	//The direction...
part_type_orientation(global.Particle2, 0, 0, 0, 0, 1);	//This changes the rotation of the particle...
part_type_blend(global.Particle2, 1);					//This is the blend mode, either additive or normal...
part_type_life(global.Particle2, 40, 80);				//This is its lifespan in steps...

//Create emitters and name them...
global.Particle1_Emitter2 = part_emitter_create(global.P_System2);  //This will be the static emitter that streams


//Define emitter properties...
part_emitter_region(global.P_System2, global.Particle1_Emitter2, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);


//Use an emitter to stream particles...
part_emitter_stream(global.P_System2, global.Particle1_Emitter2, global.Particle2, 60);

//Set alarm to burst particles...
alarm[0] = 30;
