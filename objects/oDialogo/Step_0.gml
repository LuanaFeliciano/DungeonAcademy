/// @description Insert description here
// You can write your code in this editor
if inicializar == false {
	scr_textos()
	global.pontoAdicionado = false
	inicializar = true;
	alarm[0] = 1;
}

if (!keyboard_check(ord("F"))) {
    return;
}

// avancar caractere se ainda tem mais letra para mostrar
if (caractere < string_length(textos_grid[# Infos.Textos, pagina])) {
    caractere++;
    return;
}

//passar para a proxima pagina do dialogo
if (pagina < ds_grid_height(textos_grid) - 1) {
    pagina++;
    caractere = 0;
    alarm[0] = 1;
    return;
}


if (op_num != 0) {
    desenhar_dialogo = true;
    return;
}

//finalizadno dialogo quando nao tem mais pagina
global.dialogo = false;
instance_destroy();

