
if keyboard_check(ord("W")) & place_free(x,y-col){
	y-=spd;
}
if keyboard_check(ord("A")) & place_free(x-col,y){
	x-=spd;
}
if keyboard_check(ord("S")) & place_free(x,y+col){
	y+=spd;
}
if keyboard_check(ord("D")) & place_free(x+col,y){
	x+=spd;
}

#region
if distance_to_object(oParNpcs) <= 10 { //tem algum npc perto?
	if  keyboard_check_pressed(ord("F")) and global.dialogo == false { //se tiver e eu apertar f
		var _npc = instance_nearest(x,y, oParNpcs); //acha o npc proximo e pega instancia dele
		if(_npc.conversa == false){//nao deixar iniciar conversa do mesmo monstro novamente
			var _dialogo = instance_create_layer(x,y,"Dialogo",oDialogo);
			_dialogo.npc_nome = _npc.nome;
			_npc.conversa = true;
			
		}else{//conversa true (ja conversou tudo com o monstro)
			//colocar aqui regra portal
		}
	}
}
#endregion