// Alterna o estado de pausa ao pressionar ESC
if (keyboard_check_pressed(vk_escape)) {
    global.pause = !global.pause;
}

if (global.pause) {
    // Define as variáveis gui_w e gui_h
    var gui_w = display_get_width();
    var gui_h = display_get_height();
    
    // Inicializa as cores dos botões
    oPause.color_continue = c_white;
    oPause.color_exit = c_white;

    // Definir o botão ativo com base nas teclas W (para "Continue") e S (para "Exit")
    if (keyboard_check_pressed(vk_up)) {  // Corrigido: ord("W") para a tecla W
        oPause.selected_button = "continue";  // O botão "Continue" é selecionado
    }
    if (keyboard_check_pressed(vk_down)) {  // Corrigido: ord("S") para a tecla S
        oPause.selected_button = "exit";  // O botão "Exit" é selecionado
    }
    
    // Altera as cores com base no botão selecionado
    if (oPause.selected_button == "continue") {
        oPause.color_continue = c_yellow;
    } else if (oPause.selected_button == "exit") {
        oPause.color_exit = c_yellow;
    }
    
    // Acionar a ação ao pressionar Enter
    if (keyboard_check_pressed(vk_enter)) {
        if (oPause.selected_button == "continue") {
            global.pause = false;
        } else if (oPause.selected_button == "exit") {
            room_goto(TelaInicial); // Substitua pelo nome da sua sala inicial
        }
    }
}
