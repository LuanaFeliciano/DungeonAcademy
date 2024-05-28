function scr_textos(){
	switch npc_nome{
		case "Caveira":
		    ds_grid_add_text("Bem-vindo ao desafio de programação!", sCaveiraFace, oCaveiraFace, 0,"pergunta", "Caveira");
		    ds_grid_add_text("Qual destes é um paradigma de programação?", sCaveiraFace,oCaveiraFace, 0,"pergunta", "Caveira");

		    add_op("Orientação a Objetos", "OOP");
		    add_op("Futebol", "Futebol");
		    add_op("Refrigerante", "Refrigerante");
		break;

		case "OOP":
		    ds_grid_add_text("Eu escolho Orientação a Objetos", sMaleFace,oMaleFace, 0,"resposta", "Player");
		    ds_grid_add_text("Você Acertou!", sCaveiraFace,oCaveiraFace, 10,"respostaMonster", "Caveira");
		break;

		case "Futebol":
		    ds_grid_add_text("Eu escolho Futebol", sMaleFace,oMaleFace, 0,"resposta", "Player");
		    ds_grid_add_text("Você Errou! Você realmente pensou que futebol fosse um paradigma de programação?!", sCaveiraFace,oCaveiraFace, 0,"respostaMonster", "Caveira");
			oMale.vida = oMale.vida - 0.25;
		break;

		case "Refrigerante":
		    ds_grid_add_text("Eu escolho Refrigerante", sMaleFace,oMaleFace, 0,"resposta", "Player");
		    ds_grid_add_text("Você Errou! Acho que você está com sede...", sCaveiraFace,oCaveiraFace, 0,"respostaMonster", "Caveira");
			oMale.vida = oMale.vida - 0.25;
		break;
////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		case "Goblin":
		    ds_grid_add_text("Bem-vindo ao desafio tecnológico!", sGoblinFace,oGoblinFace, 0,"pergunta", "Goblin");
		    ds_grid_add_text("Qual destes é um protocolo de comunicação de rede?", sGoblinFace,oGoblinFace, 0,"pergunta", "Goblin");

		    add_op("TCP", "TCP");
		    add_op("HTTP", "HTTP");
		    add_op("FTP", "FTP");
		break;

			case "TCP":
			    ds_grid_add_text("Eu escolho TCP", sMaleFace,oMaleFace, 0,"resposta", "Player");
			    ds_grid_add_text("Você Acertou!", sGoblinFace,oGoblinFace, 10,"respostaMonster", "Goblin");
			break;

			case "HTTP":
			    ds_grid_add_text("Eu escolho HTTP", sMaleFace,oMaleFace, 0,"resposta", "Player");
			    ds_grid_add_text("Você Errou! Mas pelo menos você não foi para o FTP!", sGoblinFace,oGoblinFace, 0,"respostaMonster", "Goblin");
				oMale.vida = oMale.vida - 0.5;
			break;

			case "FTP":
			    ds_grid_add_text("Eu escolho FTP", sMaleFace,oMaleFace, 0,"resposta", "Player");
			    ds_grid_add_text("Você Errou e foi muito lerdão de escolher FTP!  ", sGoblinFace,oGoblinFace, 0,"respostaMonster", "Goblin");
				oMale.vida = oMale.vida - 0.5;
			break;
			
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
			case "Cérebro":
			    ds_grid_add_text("Bem-vindo ao desafio de engenharia de software!", sCerebroFace,oCerebroFace, 0,"pergunta", "Cérebro");
			    ds_grid_add_text("Qual destes é um exemplo de requisito não funcional?", sCerebroFace,oCerebroFace, 0,"pergunta", "Cérebro");

			    add_op("Desempenho do sistema", "Desempenho");
			    add_op("Funcionalidade de login", "Login");
			    add_op("Funcionalidade de salvar dados", "Salvar");
			break;

				case "Desempenho":
				    ds_grid_add_text("Eu escolho Desempenho do sistema", sFemaleFace,oFemaleFace, 0,"resposta", "Player");
				    ds_grid_add_text("Você Acertou!", sCerebroFace,oCerebroFace, 10,"respostaMonster", "Cérebro");
				break;

				case "Login":
				    ds_grid_add_text("Eu escolho Funcionalidade de login", sFemaleFace,oFemaleFace, 0,"resposta", "Player");
				    ds_grid_add_text("Você Errou feio agora em! Mas pelo menos não foi uma funcionalidade de salvar...", sCerebroFace,oCerebroFace, 0,"respostaMonster", "Cérebro");
					oMale.vida = oMale.vida - 0.75;
				break;

				case "Salvar":
				    ds_grid_add_text("Eu escolho Funcionalidade de salvar dados", sFemaleFace,oFemaleFace, 0,"resposta", "Player");
				    ds_grid_add_text("Você Errou! Salvando o dia com respostas erradas...", sCerebroFace,oCerebroFace, 0,"respostaMonster", "Cérebro");
					oMale.vida = oMale.vida - 0.75;
				break;
				
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////			
			case "Lava":
			    ds_grid_add_text("Bem-vindo ao desafio de redes!", sLavaFace,oLavaFace, 0,"pergunta", "Lava");
			    ds_grid_add_text("Qual destes é um tipo de tecnologia de comunicação sem fio?", sLavaFace,oLavaFace, 0,"pergunta", "Lava");

			    add_op("Bluetooth", "Bluetooth");
			    add_op("USB", "USB");
			    add_op("HDMI", "HDMI");
			break;

				case "Bluetooth":
				    ds_grid_add_text("Eu escolho Bluetooth", sFemaleFace,oFemaleFace, 0,"resposta", "Player");
				    ds_grid_add_text("Você Acertou! O Bluetooth é uma tecnologia de comunicação sem fio.", sLavaFace,oLavaFace, 10,"respostaMonster", "Lava");
				break;

				case "USB":
				    ds_grid_add_text("Eu escolho USB", sFemaleFace,oFemaleFace, 0,"resposta", "Player");
				    ds_grid_add_text("Você Errou! USB é uma tecnologia de conexão com fio. Você nunca carregou seu celular?", sLavaFace,oLavaFace, 0,"respostaMonster", "Lava");
					oMale.vida = oMale.vida - 1.5;
				break;

				case "HDMI":
				    ds_grid_add_text("Eu escolho HDMI", sFemaleFace,oFemaleFace, 0,"resposta", "Player");
				    ds_grid_add_text("Você Errou! HDMI é uma interface de vídeo, não uma tecnologia de comunicação sem fio. Você está nos tempos das cavernas? Porque está parecendo", sLavaFace,oLavaFace, 0,"respostaMonster", "Lava");
					oMale.vida = oMale.vida - 1.5;
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
	_grid[# 4, _y] = argument[4];
	_grid[# 5, _y] = argument[5];
}

function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}