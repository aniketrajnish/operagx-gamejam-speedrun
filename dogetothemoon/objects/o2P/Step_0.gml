if (gameStarted)
{
	mAlarm--;
	if(mAlarm>30)
	{
		image_xscale = 1.05;
		image_yscale = 1.05;
	}
	else
	{
		image_xscale = 1;
		image_yscale = 1;
	}
}
if(mAlarm<=0)
{
	room_goto(0);
}