/// @description Insert description here
// You can write your code in this editor

global.dialogo = false;
global.pontuacao = 0;
global.pontoAdicionado = false;
global.request_id = "";
global.request_ranking = "";



function scr_fazer_requisicao() {
    var url = "http://127.0.0.1:8000/api/perguntasDados?sala=1"; // Substitua pela sua URL
    global.request_id = http_get(url); // Faz a requisição HTTP GET e guarda o ID da requisição
	show_debug_message( "GLOBAL",global.request_id);
}

scr_fazer_requisicao()