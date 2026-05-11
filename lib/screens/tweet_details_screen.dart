import 'package:basic_app/classes/tweet.dart';
import 'package:flutter/material.dart';

class TweetDetailsScreen extends StatelessWidget {
  const TweetDetailsScreen({super.key, required this.tweet});
  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(tweet.user),
                  Text(tweet.content),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
