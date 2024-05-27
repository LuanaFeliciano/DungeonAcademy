spd = 4;
col = spd + 0;

up = noone;
down = noone;
left = noone;
right = noone;

velh = 0;
velv = 2;

estado_idle = new estado();
estado_walk = new estado();

estado_idle.inicia = function() {
	sprite_index = sMaleStand;
	
	image_index = 0
}

estado_idle.roda = function() {
	if (spd != 0) {
		troca_estado(estado_idle);
	}
	
}

estado_walk.inicia = function() {
	sprite_index = sMaleWalk;
	
	image_index = 0
}

estado_walk.roda = function() {
	if (spd == 0) {
		troca_estado(estado_idle)
	}

}
inicia_estado(estado_idle);

