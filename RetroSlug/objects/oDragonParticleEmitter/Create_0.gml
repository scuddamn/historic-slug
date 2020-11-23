

/// @description Initialise Particles
if global.DragonSolved = false {
	global.DragonP_System = part_system_create_layer("particles", false);//Create the system and give it a name...
	global.DragonParticle1 = part_type_create();									//Create the particle and give it a name...

//Define the particle...
	part_type_shape(global.DragonParticle1, pt_shape_pixel);		//This defines the particles shape...
	part_type_size(global.DragonParticle1, 1, 1, .1, 2);			//This is for the size...
	part_type_scale(global.DragonParticle1, 1.4, 1.1);				//This is for scaling...
	part_type_color1(global.DragonParticle1, c_olive);			//This sets its colour. There are three different codes for this...
	part_type_alpha2(global.DragonParticle1, .7, .3);					//This is its alpha. There are three different codes for this...
	part_type_speed(global.DragonParticle1, 0.50, 2, -0.10, 0);	//The particles speed...
	part_type_direction(global.DragonParticle1, 0, 359, 0, 20);	//The direction...
	part_type_orientation(global.DragonParticle1, 0, 0, 0, 0, 1);	//This changes the rotation of the particle...
	part_type_blend(global.DragonParticle1, 1);					//This is the blend mode, either additive or normal...
	part_type_life(global.DragonParticle1, 20, 50);				//This is its lifespan in steps...

	//Create emitters and name them...
	global.DragonParticle1_Emitter1 = part_emitter_create(global.DragonP_System);  //This will be the static emitter that streams


	//Define emitter properties...
	part_emitter_region(global.DragonP_System, global.DragonParticle1_Emitter1, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);


	//Use an emitter to stream particles...
	part_emitter_stream(global.DragonP_System, global.DragonParticle1_Emitter1, global.DragonParticle1, 400);

	//Set alarm to burst particles...
	alarm[0] = 30;
}