image_angle = image_angle + rand;
y = y + oSpawner.eSpeed;
eAlarm--;
if(eAlarm<=0) sprite_index = sBitcoin;
if(eLife<0)
{
	instance_destroy();
	oSpawner.shakeValue = 4;
	oSpawner.shake = true;
	oSpawner.alarm[0] = 30;
	part_particles_create(global.partSystem, x , y , global.ptBasic, 1);
}
if (y>1000) instance_destroy();


