sAlarm--;
if (sAlarm == 0)
{
	rand = random_range(0,250);
	while (rand <= old_rand + 100 and rand >= old_rand - 100)
	{
		rand = random_range(0,270);
	}
	
	sAlarm = room_speed;
	instance_create_depth(x + rand, y-100, 1, oEnemy);
	old_rand = rand;
}
if(!playerDead) gameScore+= 5*eSpeed;
else
{	
	canRestart = true;
	if(gameScore > highScore)
	{
		ini_open("saveFile");
		ini_write_real("highscore","score",gameScore);
	}
}

eAlarm--;

if (eAlarm<=0)
{	
	eAlarm = 60;
	eSpeed+=.2;
}

if (shake)
{
	camera_set_view_pos(view_camera[0], view_x + random_range(-shakeValue, shakeValue),view_y + random_range(-shakeValue, shakeValue));
}
else
{
	camera_set_view_pos(view_camera[0], view_x, view_y)
}