if(room == Game)
{
	if(!playerDead)
	{
		draw_set_color(c_yellow);
		draw_text(x+10, y+10, "Hi $" + string(highScore));
		draw_set_color(c_white);
		draw_text(x+10, y+40, "$" + string(gameScore));
	}
	else 
	{	
		draw_set_color(c_yellow);
		draw_text(x+10, y+10, "Hi $" + string(highScore));
		draw_set_color(c_white);
		draw_text(x+140, y+280, "$" + string(gameScore));
		draw_set_color(c_yellow);
		draw_text(x+40, y+340, "Press 'R' to restart");
	}
}
else
{	
	draw_set_color(c_yellow);
	draw_text(x+10, y+10, "Hi $" + string(highScore));	
	//draw_text(x+50, y+20,string(eSpeed));
}
//draw_text(x+10, y+40, "Lives: " + string(gameLives));