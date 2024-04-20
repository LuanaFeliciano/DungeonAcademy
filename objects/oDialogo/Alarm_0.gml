/// @description Insert description here
// You can write your code in this editor
if inicializar == true{
	if caractere < string_length(textos_grid[# Infos.Textos,pagina]){
		var _snd = sTap;
		audio_play_sound(_snd, 1, 0)
		caractere++;
		alarm[0] = 1;
	}
}
