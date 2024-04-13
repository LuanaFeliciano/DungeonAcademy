fontPixel = font_add_sprite_ext(sFontBitmap, " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~ çüéâäàáçêëèéîïìíôöòóûúüÿ", true, 0);

draw_set_font(fontPixel)

var dist = 120;
var gui_largura = display_get_gui_width()
var gui_altura = display_get_gui_height()
var x1 = gui_largura / 2;
var y1 = 550;

for(var i = 0; i < op_max; i++){
    draw_set_halign(fa_center)
    draw_set_valign(fa_center)
    draw_text_ext_transformed_color(x1,y1 +(dist * i),opcoes[i], 50, 500, 5,5,0,c_white,c_white,c_white, c_white,1 )
	//texto 2 é 250
	//texto 1 = 330
	if(index == 0){
		var text_width = 330;
		var underline_y = 505;
	}else{
		var text_width = 250;
		var underline_y = 625;
	}

	
    var underline_x1 = x1 - text_width / 2;
    var underline_x2 = x1 + text_width / 2;
    
    // Desenhar o sublinhado
    draw_line_width_color(underline_x1, underline_y, underline_x2, underline_y, 3,  c_white, #3C65B6);
}


draw_set_font(-1)