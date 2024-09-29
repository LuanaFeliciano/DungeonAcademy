enum Infos {
    Textos,
    Retrato,
    Animacao_Retrato,
    Acertou,
    Tipo,
    Nome
}

npc_nome = "";
textos_grid = ds_grid_create(5, 0);
pagina = 0;

op[0] = "";
op_resposta[0] = "";
op_num = 0;
op_selecionada = 0;
desenhar_dialogo = false;

inicializar = false;

caractere = 0;
tempo_restante = 80 * room_speed; // 80 segundos em room_steps
global.pontoAdicionado = false;
global.dialogo = false; // Inicializa o diálogo como falso
// Evento Create
mostrar_temporizador = true; // Variável para controlar a exibição do temporizador
