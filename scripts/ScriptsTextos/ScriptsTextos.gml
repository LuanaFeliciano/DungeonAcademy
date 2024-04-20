// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textos(){
	switch npc_nome{
		case "Caveira":
			ds_grid_add_text("O que você está fazendo aqui mero mortal?",s_caveira_photo,0,"Caveira");
			ds_grid_add_text("Está preparado para as perguntas?",s_caveira_photo,0,"Caveira");
			ds_grid_add_text("Quem veio primeiro? o ovo ou a galinha?",s_caveira_photo,0,"Caveira");
		
				add_op("Ovo", "Resposta 1");
				add_op("Galinha", "Resposta 2");
				add_op("Borba", "Resposta 3");
			break;
		
			case "Resposta 1":
				ds_grid_add_text("Eu escolho o ovo",s_caveira_photo,0,"Caveira"); //mudar pra imagem do playe 
				ds_grid_add_text("Você Errou!",s_caveira_photo,0,"Caveira");
			break;
			case "Resposta 2":
				ds_grid_add_text("Eu escolho a galinha",s_caveira_photo,0,"Player");
				ds_grid_add_text("Você Errou!",s_caveira_photo,0,"Caveira");
			break;
			case "Resposta 3":
				ds_grid_add_text("Eu escolho o Borba",s_caveira_photo,0,"Player");
				ds_grid_add_text("Você Acertou!",s_caveira_photo,0,"Caveira");
			break;
			
	}
}

function ds_grid_add_row(){
	///@arg ds_grid
	
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1)
}

function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	
	var _grid = textos_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}

function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}