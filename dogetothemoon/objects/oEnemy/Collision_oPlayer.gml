instance_destroy(oFire);
instance_destroy(other);
instance_destroy();
oSpawner.playerDead = true;
instance_destroy();
part_particles_create(global.partSystem, other.x , other.y , global.ptBasic, 1);
oSpawner.shakeValue = 8;
oSpawner.shake = true;
oSpawner.alarm[0] = 60;
audio_play_sound(pExplode,1,false);