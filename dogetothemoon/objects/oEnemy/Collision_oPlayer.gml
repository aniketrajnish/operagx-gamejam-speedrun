instance_destroy(other);
oSpawner.playerDead = true;
instance_destroy();
effect_create_below(ef_firework,other.x, other.y, 2, c_yellow);
oSpawner.shakeValue = 6;
oSpawner.shake = true;
oSpawner.alarm[0] = 30;