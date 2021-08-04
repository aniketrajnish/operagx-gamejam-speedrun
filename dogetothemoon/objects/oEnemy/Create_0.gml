rand = random_range(-.25,.25);
//eAlarm = 60;
//eSpeed = 3;
if(oSpawner.gameScore<2000)
{
	spr = sBitcoin;
	sprHit = SHitbitcoin;
}
else if (oSpawner.gameScore<4000)
{
	spr = S_UFO;
	sprHit = S_hitdino;
}
else if (oSpawner.gameScore<6000)
{
	spr = SClawUfo;
	sprHit = S_hitClaw;
}
else
{
	i = irandom_range(0,3);
	if(i==0) 
	{
		spr = sBitcoin;
		sprHit = SHitbitcoin;
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