import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

// 지정된 구성으로 생성 모델을 초기화합니다
final model = GenerativeModel(
  model: 'gemini-1.5-flash',
  apiKey: 'AIzaSyAP_Q7Ivd2u2eOX9WjcsOkhvCKeljea48k',

  // 안전 설정을 조정합니다
  generationConfig: GenerationConfig(
    temperature: 2,
    topK: 64,
    topP: 0.95,
    maxOutputTokens: 8192,
    responseMimeType: 'text/plain',
  ),
);
late ChatSession chat;

class ChatBot {
  // 특정 취미로 채팅 세션을 초기화하는 생성자
  ChatBot(String hobby) {
    chat = model.startChat(history: [
      Content.multi([
        TextPart(
            '이제부터 너는 경력 20년의 $hobby를 하는 사람이야. 너는 $hobby를 너무나 사랑하고 너의 지식을 다른 사람에게 전달하는 것을 좋아하는 사람이야. 그리고 누군가 너에게 $hobby 관련 질문을 하면 너는 친절하고 자세하게 설명을 해줘. 질문의 내용이 $hobby 이외에 내용이 나오면 너는 그 부분은 잘 모르겠다고 미안하다고만 대답해. 그리고 혹시 다른 질문이 있니? 라고 다시 질문을 이어가도록 해줘'),
      ]),
    ]);
  }

  // 메시지를 보내고 채팅 세션에서 응답을 받는 함수
  Future<String?> sendPost(String message) async {
    final response = await chat.sendMessage(Content.text(message));
    print(response.text);
    return response.text;
  }
}
