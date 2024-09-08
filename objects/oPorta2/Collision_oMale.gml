if (!global.conversation_ended) {
    // Se a conversa não terminou, bloqueia o portal
    exit;  // Cancela a colisão (impede a transição de fase)
}

// Se a conversa terminou, permite a transição de sala
if (global.conversation_ended) {
    // Exemplo de transição de sala com fade
    instance_create_depth(0, 0, -9999, oFade);  // Cria efeito de fade antes da transição
    room_goto(SalaProd_3);  // Vai para a próxima sala
}
