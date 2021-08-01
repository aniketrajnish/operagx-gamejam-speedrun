image_angle = image_angle + rand;
y = y + oSpawner.eSpeed;
if(eLife<0)
{
	instance_destroy();
	effect_create_below(ef_smokeup, x,y, 2, c_yellow);
}
if (y>1000) instance_destroy();

