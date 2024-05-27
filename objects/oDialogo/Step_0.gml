/// @description Insert description here
// You can write your code in this editor
if inicializar == false {
	scr_textos()
	global.pontoAdicionado = false
	inicializar = true;
	alarm[0] = 1;
}

if mouse_check_button_pressed(mb_left){
	if caractere < string_length(textos_grid[# Infos.Textos,pagina]){
		caractere =  string_length(textos_grid[# Infos.Textos,pagina]);
	}else{
		if pagina < ds_grid_height(textos_grid) -1 {
			alarm[0] = 1;
			caractere = 0;
			pagina ++;
		}else{
			if (op_num != 0) {
				op_draw = true;
			}else{
				global.dialogo = false;
				instance_destroy();
			}
		}
	}
	
}