var all_outside = true;  // Verifica se todos os quadrados saíram da tela

for (var i = 0; i < array_length(squares); i++) {
    var square = squares[i];
    
    // Move o quadrado para a direita
    square.x += slide_speed;
    
    // Verifica se o quadrado ainda está visível na tela
    if (square.x < room_width) {
        all_outside = false;
    }
    
    // Atualiza a posição do quadrado na matriz
    squares[i] = square;
}

// Se todos os quadrados saíram da tela, destrua a instância
if (all_outside) {
    instance_destroy();
}
