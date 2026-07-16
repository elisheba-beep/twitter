import 'package:basic_app/dummy_data/test_chats.dart';
import 'package:basic_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class EliseScreen extends StatelessWidget {
  const EliseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ChatBubble(message: chats[index]);
                },
                itemCount: chats.length,
                reverse: true,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Ask elise anything',
                      border: InputBorder.none,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.attach_file,
                      ),
                      Icon(
                        Icons.arrow_upward,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
