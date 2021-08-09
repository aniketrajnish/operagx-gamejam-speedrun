sAlarm-= difficulty/6;
if (sAlarm <= 0 and room != Menu)
{
	rand = random_range(-150,150);
	while (rand <= old_rand + 50 and rand >= old_rand - 50)
	{
		rand = random_range(-150,150);
	}
	
	sAlarm = room_speed;
	if (tempGameScore<10000) instance_create_depth(x + rand, y-50, 1, oEnemy);
	else if (!bossSpawned)
	{
		instance_create_depth(x + rand, y-50, 1, oBoss);
		bossSpawned = true;
	}
	old_rand = rand;
}
tempGameScore += 4;
if(!playerDead) gameScore+= floor(.5*difficulty);

else
{	
	canRestart = true;
	if (room == Game)
	{	
		if(gameScore > highScore)
		{
			ini_open("saveFile");
			ini_write_real("highscore","score",gameScore);
			highScore = ini_read_real("highscore","score",0);
		}
	}
	
	else if (room == MultiGame)
	{
		if(gameScore > highScoreMulti)
		{
			ini_open("saveFile");
			ini_write_real("highscoreMulti","score",gameScore);
			highScoreMulti = ini_read_real("highscoreMulti","score",0);
		}
	}
}

if(gameScore<0) gameScore = 0;

eAlarm--;

if (room == MultiGame and !instance_exists(oP1) and !instance_exists(oP2))
{
	playerDead = true;
}
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


if (gameScore > highScore and room = Game and gameScore!=0 and boolHSAudio = false)
{
	audio_play_sound(Score,1,false);
	boolHSAudio = true;
}
if (gameScore > highScoreMulti and room = MultiGame and gameScore!=0 and boolHSAudio = false) 
{
	audio_play_sound(Score,1,false);
	boolHSAudio = true;
}