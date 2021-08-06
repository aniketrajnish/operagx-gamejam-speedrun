left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shoot = keyboard_check(vk_space);

move = 0;
pSpeed = 5*oSpawner.difficulty/3;
if (left and right)
{
	move = 0;
	image_angle = lerp(image_angle, 0 , .25);
}
else if(left)
{
	move = -1;
	image_angle+=3;
}
else if(right) 
{
	move = 1;
	image_angle-=3;
}

else if(!left and !right)
{
	image_angle = lerp(image_angle, 0 , .25);
}

x = x + move * pSpeed;

pAlarm-= oSpawner.difficulty/3.75;
x=clamp(x, 50, room_width-50);
image_angle = clamp(image_angle, -15, 15)

if (pAlarm <= 0)
{
	pAlarm = 0;
	canShoot = true;
}

if (shoot and canShoot)
{
	oSpawner.gameScore -= 69;
	part_particles_create(global.partSystem, x+10 , y-15 , global.ptTextMinus, 1);
	instance_create_depth(x, y-26, -1, oBullet);
	canShoot = false;
	pAlarm = room_speed;
	audio_play_sound(Shoot,1,false);
}
