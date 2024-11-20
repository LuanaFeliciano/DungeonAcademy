if (global.pause) exit;

if (!global.dialogo) {
    var _moving = false; // Variável que verifica se está se movendo
    var spd_actual = spd; // Velocidade normal

    // Verifica se a tecla de corrida (Shift) está pressionada
    if (keyboard_check(vk_shift)) {
        spd_actual = spd * 2; // Aumenta a velocidade se a tecla Shift estiver pressionada
    }

    if (keyboard_check_direct(ord("W")) && place_free(x, y - col)) {
        y -= spd_actual;
        sprite_index = sHeroMRunning;
        _moving = true;
    }
    if (keyboard_check_direct(ord("A")) && place_free(x - col, y)) {
        x -= spd_actual;
        if (image_xscale != -1) {
            image_xscale = -0.06; // Virar para a esquerda
        }
        _moving = true;
        sprite_index = sHeroMRunning;
    }
    if (keyboard_check_direct(ord("S")) && place_free(x, y + col)) {
        y += spd_actual; 
        sprite_index = sHeroMRunning;
        _moving = true;
    }
    if (keyboard_check_direct(ord("D")) && place_free(x + col, y)) {
        x += spd_actual;
        if (image_xscale != 1) {
            image_xscale = 0.06; // Virar para a direita    
        }
        _moving = true;
        sprite_index = sHeroMRunning;
    }

    // Controle de som
    if (_moving) {
        if (!sound_playing) { // Só toca o som se não estiver tocando
            audio_play_sound(snd_walking, 10, true, 50); // true para tocar em loop
            sound_playing = true;
        }
    } else {
        if (sound_playing) { // Se não está se movendo, para o som
            audio_stop_sound(snd_walking);
            sound_playing = false;
        }
        sprite_index = sHeroMBreathing; // Parado
        image_xscale = 0.06; // Mantenha a escala padrão
        image_yscale = 0.06;
    }
} else {
    sprite_index = sHeroMBreathing; // Parado
    image_xscale = 0.06; // Mantenha a escala padrão
    image_yscale = 0.06;
    if (sound_playing) { // Se o diálogo interromper o movimento, para o som também
        audio_stop_sound(snd_walking);
        sound_playing = false;
    }
}

// Verifica se não há teclas pressionadas
if (!keyboard_check(vk_anykey)) {
    sprite_index = sHeroMBreathing;
    image_xscale = 0.06; 
    image_yscale = 0.06; 
    if (sound_playing) { // Para o som se nenhuma tecla for pressionada
        audio_stop_sound(snd_walking);
        sound_playing = false;
    }
}



function esconderPrompt(){
	var _prompt = instance_find(oPrompt,0);
	if (instance_exists(_prompt)) {
		instance_destroy(_prompt);
	}
}

#region
if distance_to_object(oParNpcs) <= 10 { // tem algum NPC perto?
    var _npc = instance_nearest(x, y, oParNpcs); //acha o NPC proximo e pega a instncia dele
    
    if (!_npc.conversa) {
        //criando prompt (tutorial conversa)
        if (!instance_exists(oPrompt)) {
            var _prompt = instance_create_layer(oMale.x, oMale.y, "Instances", oPrompt);
            _prompt.visible = true;
        }
        
        //apertar f para interagir com monstro
        if (keyboard_check_pressed(ord("F")) && global.dialogo == false) {
            esconderPrompt();
            
            if (_npc.conversa == false) { //nao conversar com monstro nvoamente
                var _dialogo = instance_create_layer(x, y, "Dialogo", oDialogo);
                _dialogo.npc_nome = _npc.nome;
                _npc.conversa = true; //ja conversou com monstro
                
                esconderPrompt();
            }
        }
    } else {
        esconderPrompt();
    }
} else {
    esconderPrompt();
}
#endregion