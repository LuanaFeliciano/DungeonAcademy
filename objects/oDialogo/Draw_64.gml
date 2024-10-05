var pontuacao = 0; 
if (inicializar) {
    // Certifique-se de que a página atual é válida
    if (pagina < ds_grid_height(textos_grid)) {
        var tipo = textos_grid[# Infos.Tipo, pagina]; // Acesse o tipo na grid
        // O restante do seu código de desenho aqui...
        var retrato_inst = instance_create_layer(32, -160, "Instances", textos_grid[# Infos.Animacao_Retrato, pagina]); // Use a camada "Instances" ou a camada correta
    }
}

var pontuacao_adicionada = false;
var __text_x = 50;
var __text_y = 18;
var __height = 32;
var __border = 5;
var __padding = 16;
var __retrato = textos_grid[# Infos.Animacao_Retrato, pagina]; // Acesse o objeto diretamente
var __texto = string_copy(textos_grid[# Infos.Textos, pagina], 0, caractere);
__height = string_height(textos_grid[# Infos.Textos, pagina]);

if (instance_exists(__retrato)) {
    var __sprite = __retrato.sprite_index;
    var __sprite_height = sprite_get_height(__sprite);
    if (__sprite_height > __height) {
        __height = __sprite_height;
    }
}

__height += __padding * 2;
if (instance_exists(__retrato)) {
    __text_x = sprite_get_width(__retrato.sprite_index) + (__padding * 2);
}

var __rect_y = display_get_gui_height() - __height;

draw_set_color(c_black);
draw_rectangle(0, __rect_y, display_get_gui_width(), display_get_gui_height(), false);

draw_set_color(c_white); // borda branca
draw_rectangle(__border, __rect_y + __border, display_get_gui_width() - __border, display_get_gui_height() - __border, false);

draw_set_color(c_black); // retângulo preto
draw_rectangle((__border * 2), __rect_y + (__border * 2), display_get_gui_width() - (__border * 2), display_get_gui_height() - (__border * 2), false);

if (instance_exists(__retrato)) {
    draw_sprite(__retrato.sprite_index, __retrato.image_index, __border * 3, __rect_y + (__border * 3)); // Desenha o sprite do objeto
}

draw_set_color(c_white);
draw_set_font(ftDialogo);

// Adicionando margem acima do texto
var margin_top = 20;
var text_y_with_margin = __rect_y + __text_y + margin_top;

draw_text_ext(__text_x, text_y_with_margin, __texto, 16, display_get_gui_width() - 192);
draw_set_halign(fa_left);

// Adiciona pontuacao na variável, se for 0 errou, se for algo diferente de 0 acerto
if (textos_grid[# Infos.Acertou, pagina] > 0 && !pontuacao_adicionada) {
    pontuacao = textos_grid[# Infos.Acertou, pagina];
    pontuacao_adicionada = true; // para evitar adicionar pontuação novamente
}

// Desenho do temporizador
var timer_x = display_get_gui_width() - 200; // Ajuste a posição X do temporizador
var timer_y = 20; // Posição Y para o temporizador
draw_set_color(c_white);
draw_text(timer_x, timer_y, "Tempo Restante: " + string(tempo_restante));


// Continue com o restante do seu código
if (desenhar_dialogo == true) {
    var _opx = __text_x; // Posição X alinhada com o texto principal
    var _opy = __rect_y - 140; // Posição Y abaixo do texto principal
    var _opsep = 48; // Espaçamento entre opções

    // DESENHANo as opções com os números
    for (var i = 0; i < op_num; i++) { // opnum é o número da opção (no script que monta isso na op)
        var _stringw = string_width(op[i]); // vejo o tamanho da opção
        var option_text = string(i + 1) + ".  " + op[i]; // ADICIONO número nas opções
        var c_ltblue = make_color_rgb(173, 216, 230);
        var text_width = string_width(option_text);
        var text_height = string_height(option_text);

        // tamanhos dos retângulos das opções
        var rect_left = _opx - 10;
        var rect_top = _opy + (_opsep * i) - 15;
        var rect_right = _opx + text_width + 10; //2
        var rect_bottom = _opy + (_opsep * i) + 15;
        var c_light_blue = make_color_rgb(90, 155, 213);
        //draw_sprite_ext(sBackgroundDialogo, 0, _opx - 7, _opy - 15 + (_opsep * i), (rect_right - rect_left) / 15, 1, 0, c_white, 1);

        draw_set_color(c_black);
        draw_rectangle(rect_left - 3, rect_top - 3, rect_right + 3, rect_bottom + 3, false);

        if (op_selecionada == i) {
            draw_set_color(c_grey); // Cor azul para a opção selecionada
        } else {
            draw_set_color(c_white); // Cor cinza claro para as opções não selecionadas
        }
        draw_rectangle(rect_left, rect_top, rect_right, rect_bottom, true);

        // Desenha o texto da opção
        draw_set_color(c_white);
        draw_text(_opx, _opy + (_opsep * i), option_text);

        if (op_selecionada == i) { // bolinha da opção selecionada
            draw_set_halign(0);
            draw_sprite(sEscolha, 0, _opx - 25, _opy + (_opsep * i) - 10);
        }
    }

    for (var j = 1; j <= op_num; j++) {
        if (keyboard_check_pressed(ord(string(j))) or keyboard_check_pressed(vk_numpad0 + j)) {
            op_selecionada = j - 1; // atualiza a opção selecionada
        }
    }

    if (keyboard_check_pressed(vk_enter)) { // Enter para confirmar
        var _dialogo = instance_create_layer(x, y, "Instances", oDialogo); // criando outro diálogo
        _dialogo.npc_nome = op_resposta[op_selecionada]; // pegando a fala da opção selecionada
        instance_destroy();
    }
}

if (pontuacao > 0 and global.pontoAdicionado == false) { // controle de quanto acerta a resposta
    global.pontuacao += pontuacao;
    global.pontoAdicionado = true;
    audio_play_sound(snd_win, 1, false, 50);
	
	var nomeMonstro = textos_grid[# Infos.Nome, pagina];
	if(nomeMonstro == "Lava") {
		enviar_ranking()
	}
}

var tipo = textos_grid[# Infos.Tipo, pagina];

if (tipo == "respostaMonster" and pontuacao == 0 and global.pontoAdicionado == false) { // controle de quanto acerta a resposta
    global.pontuacao -= pontuacao;
    global.pontoAdicionado = true;
    audio_play_sound(sWrongAnswer, 1, false, 50);
	
	var nomeMonstro = textos_grid[# Infos.Nome, pagina];
	if(nomeMonstro == "Lava") {
		enviar_ranking()
	}
}

// Desenha a pontuação na tela
// draw_set_font(ftDialogo);
// draw_set_color(c_white);
// draw_text(20, 20, "Pontuação: " + string(global.pontuacao));

