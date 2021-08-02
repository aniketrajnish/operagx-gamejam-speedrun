image_angle = image_angle + rand;
y = y + oSpawner.eSpeed;
if(eLife<0)
{
	instance_destroy();
	oSpawner.shakeValue = 3;
	oSpawner.shake = true;
	oSpawner.alarm[0] = 30;
	effect_create_below(ef_smokeup, x,y, 2, c_yellow);
}
if (y>1000) instance_destroy();
if(image_alpha != 1)
image_alpha = lerp(image_alpha, 1, .25);

