import 'package:basic_app/classes/tweet.dart';
import 'package:flutter/material.dart';

class TweetDetailsScreen extends StatelessWidget {
  const TweetDetailsScreen({super.key, required this.tweet});
  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  SizedBox(width: 10),
                  Text(tweet.user),
                ],
              ),
              SizedBox(height: 10),
              Text(tweet.content),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
