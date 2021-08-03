image_angle = image_angle + rand;
y = y + oSpawner.difficulty;
eAlarm--;
if(eAlarm<=0) sprite_index = spr;
if(eLife<0)
{
	instance_destroy();
	oSpawner.gameScore+=420;
	oSpawner.shakeValue = 4;
	oSpawner.shake = true;
	oSpawner.alarm[0] = 30;
	part_particles_create(global.partSystem, x , y , global.ptBasic, 1);
	part_particles_create(global.partSystem, x , y , global.ptTextPlus, 1);
}
if (y>1000) instance_destroy();


