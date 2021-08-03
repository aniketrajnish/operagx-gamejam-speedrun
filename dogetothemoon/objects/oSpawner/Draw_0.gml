draw_set_halign(fa_center);
if(room == Game)
{	
	if(showInstruction)
	{	
		draw_set_font(gameFontSmall);
		draw_text(x, y+200, "space - shoot");
		draw_text(x, y+240, "A,D / arrow keys - move ");
	}
		
	if(!playerDead)
	{	
		draw_set_font(gameFont);
		draw_set_color(c_yellow);
		draw_text(x, y+10, "Hi $" + string(highScore));
		draw_set_color(c_white);
		draw_text(x, y+40, "$" + string(gameScore));
	}
	else 
	{	
		draw_set_font(gameFont);
		draw_set_color(c_yellow);
		draw_text(x, y+10, "Hi $" + string(highScore));
		draw_set_color(c_white);
		draw_text(x, y+280, "$" + string(gameScore));
		draw_set_color(c_yellow);
		draw_text(x, y+340, "Press 'R' to restart");
		draw_set_font(gameFontSmall);
		draw_text(x, y+500, "made with love");		
		draw_set_color(c_white);
		draw_text(x, y+540, "makra");
		draw_text(x, y+580, "shaydiesin");
	}
}
else
{	
	draw_set_font(gameFont);
	draw_set_color(c_yellow);
	draw_text(x+10, y+10, "Hi $" + string(highScore));	
	//draw_text(x+50, y+20,string(eSpeed));
}
//draw_text(x+10, y+40, "Lives: " + string(gameLives));