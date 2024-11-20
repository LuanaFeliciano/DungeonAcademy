if (showing_dialog == true) {
    var text_x = 0;
    var text_y = 50;
    var height = 32;
    var border = 5;
    var padding = 30;
    
    height = string_height(current_dialog.message);
    
    if (sprite_get_height(current_dialog.sprite) > height) {
        height = sprite_get_height(current_dialog.sprite);
    }
    
    height += padding;
    text_x = (display_get_gui_width() - string_width(current_dialog.message)) / 3; // Centralizando horizontalmente
   
    
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
    draw_text_ext(text_x, text_y, current_dialog.message, 20, display_get_gui_width());
    
    alpha = lerp(alpha, 1, 0.06);
    
    draw_set_alpha(1);
}

