rand = random_range(-.25,.25);
//eAlarm = 60;
//eSpeed = 3;
if(oSpawner.gameScore<200)
{
	spr = sBitcoin;
	sprHit = SHitbitcoin;
}
else if (oSpawner.gameScore<400)
{
	spr = S_UFO;
	sprHit = S_hitdino;
}
else if (oSpawner.gameScore<600)
{
	spr = SClawUfo;
	sprHit = S_hitClaw;
}
else if (oSpawner.gameScore<800)
{
	spr = naruto_run;
	sprHit = Naruto_hit;
}
else
{
	i = irandom_range(0,3);
	if(i==0) 
	{
		spr = naruto_run;
		sprHit = Naruto_hit;
	}
	if(i==1) 
	{
		spr = S_UFO;
		sprHit = S_hitdino;
	}
	if(i==2)
	{
		spr = sBitcoin;
		sprHit = SHitbitcoin;
	}
	if(i==3)
	{
		spr = SClawUfo;
		sprHit = S_hitClaw;
	}
}
eLife = 2;
eAlarm=0;