rand = random_range(-.25,.25);
//eAlarm = 60;
//eSpeed = 3;
if(oSpawner.gameScore<800)
{
	spr = sBitcoin;
	sprHit = SHitbitcoin;
}
else if (oSpawner.gameScore<1600)
{
	spr = S_UFO;
	sprHit = S_hitdino;
}
else if (oSpawner.gameScore<2400)
{
	spr = SClawUfo;
	sprHit = S_hitClaw;
}
else if (oSpawner.gameScore<3200)
{
	spr = naruto_run;
	sprHit = Naruto_hit;
}
else if (oSpawner.gameScore<4000)
{
	spr = Pablo;
	sprHit = Pablo_hit;
}
else if (oSpawner.gameScore<4800)
{
	spr = banana_alien;
	sprHit = hitbanana;
}
else if (oSpawner.gameScore<5600)
{
	spr = Juan;
	sprHit = Juan_Hit;
}
else
{
	i = irandom_range(0,6);
	if(i==0) 
	{
		spr = naruto_run;
		sprHit = Naruto_hit;
	}
	else if (i==1) 
	{
		spr = S_UFO;
		sprHit = S_hitdino;
	}
	else if (i==2)
	{
		spr = sBitcoin;
		sprHit = SHitbitcoin;
	}
	else if (i==3)
	{
		spr = SClawUfo;
		sprHit = S_hitClaw;
	}
	else if (i == 4)
	{
	spr = Pablo;
	sprHit = Pablo_hit;
	}
	else if (i == 5)
	{
	spr = banana_alien;
	sprHit = hitbanana;
	}
	else if (i == 6)
	{
		spr = Juan;
		sprHit = Juan_Hit;
	}
}
eLife = 2;
eAlarm=0;