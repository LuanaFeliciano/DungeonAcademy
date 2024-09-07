// Evento Step
if (!inicializar) {
    scr_textos();
    global.pontoAdicionado = false;
	global.dialogo = true;
    inicializar = true;
    alarm[0] = 1;
}

if (!keyboard_check(ord("F"))) {
    return;
}

// Avançar caractere se ainda tem mais letra para mostrar
if (caractere < string_length(textos_grid[# Infos.Textos, pagina])) {
    caractere++;
    return;
}

// Passar para a próxima página do diálogo
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

// Finalizando o diálogo quando não há mais páginas
global.dialogo = false;
global.conversation_ended = true; // Define que a conversa terminou
instance_destroy();
