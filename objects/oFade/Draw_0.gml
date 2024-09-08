for (var i = 0; i < array_length(squares); i++) {
    var square = squares[i];
    
    // Define a cor do quadrado
    draw_set_color(square.color);
    
    // Desenha o quadrado
    draw_rectangle(square.x, square.y, square.x + square.size, square.y + square.size, false);
}


draw_set_color(c_white);
