left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shoot = keyboard_check(vk_space);

move = 0;

if(left) move = -1;
if(right) move = 1;

x = x + move * pSpeed;

pAlarm-=2;
x=clamp(x, 50, room_width-50);

if (pAlarm == 0)
{
	pAlarm = 0;
	canShoot = true;
}

if (shoot and canShoot)
{
	instance_create_depth(x, y-26, -1, oBullet);
	canShoot = false;
	pAlarm = room_speed;
}
