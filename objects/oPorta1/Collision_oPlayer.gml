instance_create_depth(0, 0 , -9999, oFade);

room_goto(SalaProd_2)

if (!global.conversation_ended) {
    // Se a conversa não terminou, o player não pode passar pelo portal
    exit;  // Cancela a colisão (ou outro código para impedir a passagem)
}

// Código para permitir que o player passe pelo portal após o término da conversa
