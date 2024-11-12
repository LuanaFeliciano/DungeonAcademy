// Define as variáveis gui_w e gui_h
var gui_w = display_get_width();
var gui_h = display_get_height();

if (global.pause) {
    // Fundo escuro
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);  // Restaura a opacidade

    draw_set_color(c_white);
    draw_set_font(ftMenu);
    draw_text(gui_w / 2, gui_h / 2 - 100, "PAUSE");

    // Desenha "Continue" com a cor verde se for o botão selecionado
    var continue_text_y = gui_h / 2 + 10;
    draw_set_color(oPause.selected_button == "continue" ? c_white : c_dkgray);  // Altera a cor para verde se o botão estiver selecionado
    draw_text(gui_w / 2, continue_text_y, "Continue");

    // Desenha "Exit" com a cor verde se for o botão selecionado
    var exit_text_y = gui_h / 2 + 80;
    draw_set_color(oPause.selected_button == "exit" ? c_white : c_dkgray);  // Altera a cor para verde se o botão estiver selecionado
    draw_text(gui_w / 2, exit_text_y, "Exit");
}
