import ballerinax/ai.wso2.integration as voice;

listener voice:CloudVoiceListener voiceListener = new (8080);

isolated service voice:VoiceService on voiceListener {
    isolated remote function onChatMessage(voice:ChatMessage message) returns string|error {
        string response = check mathTutorAgent.run(message.message, message.sessionId);
        return response;
    }
}
