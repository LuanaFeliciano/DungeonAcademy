/// @description Insert description here
// You can write your code in this editor
function scr_mostrar_pergunta() {
    // Verifica se json_data não é vazio
	json_data = json_parse(json_data)
	
    show_debug_message("Erro: json_data está vazio ou indefinido.", string(json_data));
}


//Evento assíncrono HTTP
if (ds_map_exists(async_load, "id")) {
    var request_id = ds_map_find_value(async_load, "id");
    

    if (request_id == global.request_id) {
 
        var status = ds_map_find_value(async_load, "status");

        if (status == 0) {
          
            var resposta = ds_map_find_value(async_load, "result");
            
            json_data = resposta;

            if (json_data != undefined) {
                show_debug_message("Requisição bem-sucedida: " + string(resposta));
                scr_mostrar_pergunta()
            } else {
                show_debug_message("Erro: Não foi possível parsear a resposta JSON.");
            }
        } else {
            show_debug_message("Erro na requisição: Status " + string(status));
        }
    }
} else {
    show_debug_message("Erro: async_load não contém a chave 'id'.");
}