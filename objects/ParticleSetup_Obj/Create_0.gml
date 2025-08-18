/// @description
particleSystem = part_system_create_layer("Instances", 0);

particleTypeHit = part_type_create();
part_type_sprite( particleTypeHit, LaserTop_Spr, 0, 0, 0);
part_type_size( particleTypeHit, 1.5, 2, 0.1, 0); //Wiggle?
part_type_life( particleTypeHit, 5, 15); //get bigger?
part_type_alpha3( particleTypeHit, 1, 0.6, 0.2); //No idea what this means
part_type_orientation(particleTypeHit, 0, 359, 0, 0, 0); //Don't know what this does either

particleTypeSpark = part_type_create();
part_type_sprite( particleTypeSpark, Spark_Spr, 0, 0, 0);
part_type_size( particleTypeSpark, 0.8, 1.4, -0.01, 0); //Wiggle?
part_type_life( particleTypeSpark, 24, 30); //get bigger?
part_type_alpha3( particleTypeSpark, 1, 0.8, 0.1); //No idea what this means
part_type_orientation( particleTypeSpark, 0, 359, 0, 0, 0); //Don't know what this does either
part_type_speed( particleTypeSpark, 2, 4, -0.1, 0);
part_type_direction( particleTypeSpark, 0, 359, 0, 0);
part_type_color3 ( particleTypeSpark, 45823, 829418, 952788); //orange... What?

