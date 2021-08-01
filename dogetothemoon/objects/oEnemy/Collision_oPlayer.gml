instance_destroy(other);
oSpawner.playerDead = true;
instance_destroy();
effect_create_below(ef_firework,other.x, other.y, 2, c_yellow);