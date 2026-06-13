import 'package:basic_app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SearchBarWidget(),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('Username'),
                  subtitle: Text('You: Post unavailable.'),
                  trailing: Text('20w'),
                );
              }),
        )
      ],
    );
  }
}
