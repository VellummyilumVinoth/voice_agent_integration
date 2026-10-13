import ballerinax/ai.wso2.integration;

listener integration:CloudVoiceListener voiceListener = new (8080);

isolated service integration:VoiceService on voiceListener {
    isolated remote function onChatMessage(integration:ChatMessage message) returns string|error {
        string response = check customerSupportAgent.run(message.message, message.sessionId);
        return response;
    }
}
