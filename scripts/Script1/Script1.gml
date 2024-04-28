// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if(inicializar == true){
	var __text_x = 50;
	var __text_y = 18;
	var __height = 32;
	var __border = 5;
	var __padding = 16;
	var __retrato = textos_grid[# Infos.Retrato, pagina]
	var __texto = string_copy(textos_grid[# Infos.Textos,pagina],0,caractere)
	__height = string_height(textos_grid[# Infos.Textos,pagina]);

	if __retrato != 0 {
		if (sprite_get_height(__retrato) > __height){
			 __height = sprite_get_height(__retrato);
		}
	}
	

	__height += __padding * 2;
	__text_x = sprite_get_width(__retrato) + (__padding * 2);

	var __rect_y = display_get_gui_height() - __height;

	draw_set_color(c_black);
	draw_rectangle(0, __rect_y, display_get_gui_width(), display_get_gui_height(), false);

	draw_set_color(c_white); // borda branca
	draw_rectangle(__border, __rect_y + __border, display_get_gui_width() - __border, display_get_gui_height() - __border, false);

	draw_set_color(c_black); // retângulo preto
	draw_rectangle((__border * 2), __rect_y + (__border * 2), display_get_gui_width() - (__border * 2), display_get_gui_height() - (__border * 2), false);
	
	if __retrato != 0 {
		draw_sprite(__retrato, 0, __border * 3, __rect_y + (__border * 3)); // image_face é meu sprite
	}

	draw_set_color(c_white);
	draw_set_font(ftDialogo);

	// Adicionando margem acima do texto
	var margin_top = 20; 
	var text_y_with_margin = __rect_y + __text_y + margin_top;

	draw_text_ext(__text_x, text_y_with_margin, __texto, 16, display_get_gui_width() - 192);
	draw_set_halign(fa_left);
	
	if (op_draw == true) {
        var _opx = __text_x; // Posição X alinhada com o texto principal
        var _opy = __rect_y - 140; // Posição Y abaixo do texto principal
        var _opsep = 48; // Espaçamento entre opções
		
		op_selecionada += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
		op_selecionada = clamp(op_selecionada, 0, op_num - 1)
        for (var i = 0; i < op_num; i++) {
			var _stringw = string_width(op[i]) ;
			draw_sprite_ext(sBackgroundDialogo, 0, _opx-7, _opy -15 + (_opsep * i), _stringw/10, 1, 0, c_white, 1)
            draw_text(_opx, _opy + (_opsep * i), op[i]);
			
			if op_selecionada == i {
				draw_set_halign(0);
				draw_sprite(sEscolha, 0, 140, _opy + (_opsep * i) -10)
			}
        }
		if (keyboard_check_pressed(vk_enter)) {
			var _dialogo = instance_create_layer(x,y, "Dialogo", oDialogo);
			_dialogo.npc_nome = op_resposta[op_selecionada];
			
			instance_destroy();
		}
    }
}