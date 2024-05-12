if (showing_dialog == true) {
    var text_x;
    var text_y;
    var height = 32;
    var border = 5;
    var padding = 40;
    
    height = string_height(current_dialog.message);
    
    if (sprite_get_height(current_dialog.sprite) > height) {
        height = sprite_get_height(current_dialog.sprite);
    }
    
    height += padding * 2;
    text_x = (display_get_gui_width() - string_width(current_dialog.message)) / 2; // Centralizando horizontalmente
    text_y = 90; // Posicionando abaixo do quadrado do personagem
    
    draw_set_alpha(alpha);
    
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), height, false);
    
    draw_set_color(c_white);
    draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
    
    draw_set_color(c_black);
    draw_rectangle(border * 2, border * 2, display_get_gui_width() - border * 2, height - border * 2, false);
    
    if (current_dialog.sprite != -1) {
        draw_sprite(current_dialog.sprite, 0, border * 3, border * 3);
    }
    
    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, current_dialog.message, 16, display_get_gui_width() - 192);
    
    alpha = lerp(alpha, 1, 0.06);
    
    draw_set_alpha(1);
}

