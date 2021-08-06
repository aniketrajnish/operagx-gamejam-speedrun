rand = random_range(-.25,.25);
//eAlarm = 60;
//eSpeed = 3;
if(oSpawner.gameScore<1000)
{
	spr = sBitcoin;
	sprHit = SHitbitcoin;
}
else if (oSpawner.gameScore<2000)
{
	spr = S_UFO;
	sprHit = S_hitdino;
}
else if (oSpawner.gameScore<3000)
{
	spr = SClawUfo;
	sprHit = S_hitClaw;
}
else if (oSpawner.gameScore<4000)
{
	spr = naruto_run;
	sprHit = Naruto_hit;
}
else if (oSpawner.gameScore<5000)
{
	spr = Pablo;
	sprHit = Pablo_hit;
}
else if (oSpawner.gameScore<6000)
{
	spr = banana_alien;
	sprHit = hitbanana;
}
else
{
	i = irandom_range(0,5);
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
}
eLife = 2;
eAlarm=0;