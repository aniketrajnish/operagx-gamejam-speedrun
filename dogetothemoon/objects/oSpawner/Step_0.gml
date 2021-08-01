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
if(!playerDead) gameScore+= eSpeed;
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
	eAlarm = 600;
	eSpeed+=1;
}

