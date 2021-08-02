instance_destroy(other);
oSpawner.playerDead = true;
instance_destroy();
part_particles_create(global.partSystem, other.x , other.y , global.ptBasic, 1);
oSpawner.shakeValue = 6;
oSpawner.shake = true;
oSpawner.alarm[0] = 30;