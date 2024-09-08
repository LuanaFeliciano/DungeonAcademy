grid_size = 10;  // Número de quadrados em cada linha e coluna
square_size = room_width / grid_size;  // Tamanho de cada quadrado
slide_speed = 4;  // Velocidade de deslizamento dos quadrados para a direita

squares = array_create(grid_size * grid_size);  // Matriz para armazenar os quadrados

// Define a cor azul claro
light_blue = make_color_rgb(173, 216, 230);  // cor

// Inicializa os quadrados na grade
for (var i = 0; i < grid_size; i++) {
    for (var j = 0; j < grid_size; j++) {
        var square = {
            x: i * square_size,  // Posição X inicial
            y: j * square_size,  // Posição Y inicial
            size: square_size,  // Tamanho do quadrado
            color: light_blue  // Cor azul claro
        };
        squares[i * grid_size + j] = square;
    }
}

transition_active = false;  // Controla se a transição está ativa
