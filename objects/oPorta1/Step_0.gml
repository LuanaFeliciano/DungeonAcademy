// Evento Create
if (!variable_global_exists("conversation_ended")) {
    global.conversation_ended = false;  // Inicializa a variável global se não existir
}
visible = false;  // Torna o portal invisível inicialmente

// Evento Step
if (global.conversation_ended) {
    visible = true;  // Torna o portal visível após o término da conversa
}
