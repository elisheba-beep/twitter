import 'package:basic_app/classes/chat_message.dart';
import 'package:basic_app/dummy_data/test_chats.dart';
import 'package:basic_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class EliseScreen extends StatefulWidget {
  const EliseScreen({super.key});

  @override
  State<EliseScreen> createState() => _EliseScreenState();
}

class _EliseScreenState extends State<EliseScreen> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ChatBubble(message: chats[index]);
              },
              itemCount: chats.length,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.shade400,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration: const InputDecoration(
                          hintText: 'Ask elise anything',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_upward),
                      onPressed: () {
                        setState(() {
                          
                        chats.add(ChatMessage(
                            message: _messageController.text, isMe: true));
                          _messageController.clear(); 
                        });
                        // TODO: Implement send message functionality
                      },
                    ),
                  ],
                ),
                // This is where you could add the attach file button if needed
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [Icon(Icons.attach_file)],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
