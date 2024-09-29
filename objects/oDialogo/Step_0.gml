if (!inicializar) {
    scr_textos(); // Função para inicializar os textos
    global.dialogo = true; // Ativa o diálogo
    inicializar = true; // Marca o diálogo como inicializado
    tempo_restante = 60; // Inicializa o tempo restante com 60 segundos (1 minuto)
    alarm[0] = room_speed; // Configura o alarme para 1 segundo (ou ajuste conforme necessário)
}



if (alarm[0] == 0) {
    tempo_restante--; // Decrementa o tempo restante
    alarm[0] = room_speed; // Reinicia o alarme para o próximo segundo
}

// Verifica se o tempo acabou
if (tempo_restante <= 0) {
    // Se o tempo acabar, encerra o jogo
    show_message("O tempo acabou! O jogo será fechado.");
    game_end(); // Fecha o jogo
    return; // Encerra o Step
}

if (!keyboard_check(ord("F"))) {
    return; // Se a tecla "F" não for pressionada, retorna
}

// Avançar caractere se ainda tem mais letra para mostrar
if (caractere < string_length(textos_grid[# Infos.Textos, pagina])) {
    caractere++;
    return; // Avança o caractere
}

// Passar para a próxima página do diálogo
if (pagina < ds_grid_height(textos_grid) - 1) {
    pagina++;
    caractere = 0; // Reseta o contador de caracteres
    alarm[0] = 1; // Reinicializa o alarme
    return;
}

if (op_num != 0) {
    desenhar_dialogo = true; // Habilita a visualização do diálogo
    return;
}

// Finalizando o diálogo quando não há mais páginas
global.dialogo = false;
global.conversation_ended = true; // Define que a conversa terminou
instance_destroy(); // Destrói a instância do diálogo