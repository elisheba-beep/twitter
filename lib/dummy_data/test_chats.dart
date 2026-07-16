import 'package:basic_app/classes/chat_message.dart';

final List<ChatMessage> chats = [
  ChatMessage(message: 'hello', isMe: true),
  ChatMessage(message: 'hello, how can I help you?', isMe: false),
  ChatMessage(message: 'whats 2+2', isMe: true),
  ChatMessage(message: '4', isMe: false),
];
