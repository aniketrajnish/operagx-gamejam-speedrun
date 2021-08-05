sAlarm-= difficulty/6;
if (sAlarm <= 0 and room == Game)
{
	rand = random_range(-150,150);
	while (rand <= old_rand + 50 and rand >= old_rand - 50)
	{
		rand = random_range(-150,150);
	}
	
	sAlarm = room_speed;
	instance_create_depth(x + rand, y-50, 1, oEnemy);
	old_rand = rand;
}
if(!playerDead) gameScore+= floor(.5*difficulty);
else
{	
	canRestart = true;
	if(gameScore > highScore)
	{
		ini_open("saveFile");
		ini_write_real("highscore","score",gameScore);
		highScore = ini_read_real("highscore","score",0);
	}
}

if(gameScore<0) gameScore = 0;

eAlarm--;

if (eAlarm<=0)
{	
	//count+=.5;
	eAlarm = 60;
	difficulty+= .5/difficulty;
}

if (shake)
{
	camera_set_view_pos(view_camera[0], view_x + random_range(-shakeValue, shakeValue),view_y + random_range(-shakeValue, shakeValue));
}
else
{
	camera_set_view_pos(view_camera[0], view_x, view_y)
}