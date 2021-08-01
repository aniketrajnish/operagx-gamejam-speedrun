left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shoot = keyboard_check(vk_space);

move = 0;

if(left) move = -1;
if(right) move = 1;

x = x + move * pSpeed;

pAlarm-=5;
x=clamp(x, 21, room_width-21);

if (pAlarm == 0)
{
	pAlarm = 0;
	canShoot = true;
}

if (shoot and canShoot)
{
	instance_create_depth(x, y-41, -1, oBullet);
	canShoot = false;
	pAlarm = room_speed;
}
