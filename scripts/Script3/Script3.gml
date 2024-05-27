// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function estado() constructor {
	// Iniciando o estado
	static inicia = function() {};
	// Rodando o estado
	static roda = function() {};
	// Finalizando o estado
	static finaliza = function() {};
}

function inicia_estado(_estado) {
	estado_atual = _estado
	estado_atual.inicia();
}

function roda_estado() {
	estado_atual.roda();

}

function troca_estado(_estado) {
	estado_atual.finaliza();
	
	estado_atual = _estado;
	
	estado_atual.inicia();
}