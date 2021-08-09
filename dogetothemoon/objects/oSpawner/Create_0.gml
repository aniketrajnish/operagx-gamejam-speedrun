sAlarm = room_speed;
old_rand = 0;
rand = 0;
gameScore = 0;
//gameLives = 0;
playerDead = false;
ini_open("saveFile");
highScore = ini_read_real("highscore","score",0);
highScoreMulti = ini_read_real("highscoreMulti","score",0);
difficulty = 3;
eAlarm = 60;
canRestart=false;
ini_close();
draw_set_font(gameFont);
shake = false;
shakeValue = 0;
//count =1;
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);

global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100);
alarm[1] = 2*room_speed;
showInstruction = true;
boolHSAudio = false;
tempGameScore = 0;
bossSpawned = false;
audio_group_load(audiogroup_default);



