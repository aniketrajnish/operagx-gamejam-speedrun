#region Particle Types
//changekhbibbuh
var gParticle = part_type_create();
part_type_shape(gParticle, pt_shape_disk);
part_type_life(gParticle, 20, 40);
global.ptBasic = gParticle;

part_type_alpha3(gParticle , 0 , 1 , 0);
part_type_color2(gParticle , c_yellow, c_white);
part_type_size(gParticle , 0.5 , 1 , 0.05 , 0.1);
part_type_speed(gParticle, 1 , 2 , 0 , 0);
part_type_direction(gParticle,-90,-90,0.1,0.1);

var tMParticle = part_type_create();
part_type_sprite(tMParticle , s69 , true, true, false);
part_type_life(tMParticle, 40, 60);
global.ptTextMinus = tMParticle;

part_type_alpha3(tMParticle , 0 , 1 , 0);
part_type_color2(tMParticle , c_red, c_white);
part_type_size(tMParticle , 0.1 , 0.25 , 0.025 , 0.1);
part_type_speed(tMParticle, 1 , 2 , 0 , 0);
part_type_direction(tMParticle,90,90,0.1,0.1);

var tPParticle = part_type_create();
part_type_sprite(tPParticle , s420 , true, true, false);
part_type_life(tPParticle, 40, 60);
global.ptTextPlus = tPParticle;

part_type_alpha3(tPParticle , 0 , 1 , 0);
part_type_color2(tPParticle , c_green, c_white);
part_type_size(tPParticle , 0.1 , 0.25 , 0.025 , 0.1);
part_type_speed(tPParticle, 1 , 2 , 0 , 0);
part_type_direction(tPParticle,90,90,0.1,0.1);

#endregion
