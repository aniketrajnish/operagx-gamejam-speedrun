if(canRestart)
{
	if (room == Game) room_goto(1);
	else if (room == MultiGame) room_goto(0);
}