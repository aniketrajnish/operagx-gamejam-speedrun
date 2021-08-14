if(eLife<0)
{
	instance_destroy();
	oSpawner.gameScore +=6969;
	oSpawner.shakeValue = 4;
	oSpawner.shake = true;
	oSpawner.alarm[0] = 30;
	part_particles_create(global.partSystem, x , y , global.ptBigBasic, 5);
	part_particles_create(global.partSystem, x , y , global.ptTextPlusPlus, 1);
	audio_play_sound(eExplode,1,false);
	oSpawner.bossSpawned = false;
	oSpawner.tempGameScore = 0;
}
bAlarm--;
if (starfe) 
{	
	if(bAlarm <= 0)
	{
		instance_create_depth(x+30, y+40, 2, oMilk);
		instance_create_depth(x-30, y+40, 2, oMilk);
		audio_play_sound(Milk,1,false);
		bAlarm = room_speed*6/oSpawner.difficulty;
	}
	x+= bSpeed;
	if(!starfing)
	{
		alarm[0] = random_range(15,30);	
		starfing = true;
	}
}

else y += 4;

eAlarm--;
if(eAlarm<=0) sprite_index = Cow_UFO;
x = clamp(x, 100, room_width-100);
