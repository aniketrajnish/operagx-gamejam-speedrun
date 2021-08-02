#region Particle Types

var gParticle = part_type_create();
part_type_shape(gParticle, pt_shape_disk);
part_type_life(gParticle, 20, 40);
global.ptBasic = gParticle;

part_type_alpha3(gParticle , 0 , 1 , 0);
part_type_color2(gParticle , c_yellow, c_white);
part_type_size(gParticle , 0.5 , 1 , 0.05 , 0.1);
part_type_speed(gParticle, 2 , 4 , 0 , 0);
part_type_direction(gParticle,-90,-90,0.1,0.1);


#endregion