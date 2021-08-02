image_angle = image_angle + rand;
y = y + oSpawner.eSpeed;
if(eLife<0)
{
	instance_destroy();
	oSpawner.shakeValue = 3;
	oSpawner.shake = true;
	oSpawner.alarm[0] = 30;
	part_particles_create(global.partSystem, x , y , global.ptBasic, 1);
}
if (y>1000) instance_destroy();
if(image_alpha != 1)
image_alpha = lerp(image_alpha, 1, .25);

