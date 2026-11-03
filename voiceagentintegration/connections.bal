import ballerinax/ai.openai;

final openai:ModelProvider supportModel = check new (accessToken, openai:GPT_4O_MINI);
