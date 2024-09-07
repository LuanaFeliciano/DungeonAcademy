


if (!global.dialogo) {
    if (keyboard_check(ord("W")) && place_free(x, y - col)) {
        y -= spd;
        audio_play_sound(sWalk, 1, false);
    }
    if (keyboard_check(ord("A")) && place_free(x - col, y)) {
        x -= spd;
        audio_play_sound(sWalk, 1, false);
    }
    if (keyboard_check(ord("S")) && place_free(x, y + col)) {
        y += spd;
        audio_play_sound(sWalk, 1, false);
    }
    if (keyboard_check(ord("D")) && place_free(x + col, y)) {
        x += spd;
        audio_play_sound(sWalk, 1, false);
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

