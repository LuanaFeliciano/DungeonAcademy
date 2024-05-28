var _sprl = sprite_get_width(spr_full_heart) * 2;
var _buffer = 10;
var _vida = oMale.vida;
var _max_vida = oMale.max_vida;

var _count = 0;
var _frag = 0;

for (var i = 0; i < floor(_max_vida); i++) {
	draw_sprite_ext(spr_empty_heart, 0, _buffer + (_sprl * i), 10, 2, 2, 0, c_white, 1);
	_count++;
}

for (var i = 0; i < floor(_vida); i++) {
	draw_sprite_ext(spr_full_heart, 0, _buffer + (_sprl * i), 10, 2, 2, 0, c_white, 1);
	_count++;
}

//show_message(_count);
if (frac(_vida) == 0.5 && !_frag) {
	draw_sprite_ext(spr_1_2_heart, 0, _buffer + (_sprl * (floor(_vida))), 10, 2, 2, 0, c_white, 1);
	_count++;
	_frag++;
} else if (frac(_vida) == 0.25 && !_frag) {
	draw_sprite_ext(spr_1_4_heart, 0, _buffer + (_sprl * (floor(_vida))), 10, 2, 2, 0, c_white, 1);
	_count++;
	_frag++;
} else if (frac(_vida) == 0.75 && !_frag) {
	draw_sprite_ext(spr_3_4_heart, 0, _buffer + (_sprl * (floor(_vida))), 10, 2, 2, 0, c_white, 1);
	_count++;
	_frag++;
}

