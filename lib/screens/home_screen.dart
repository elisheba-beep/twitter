import 'tweet_details_screen.dart';
import 'package:basic_app/classes/tweet.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Tweet> tweets = List.generate(30, (int index) {
    return Tweet(
        id: index,
        user: 'user ${index + 1}',
        content: 'this is a tweet from user ${index + 1}');
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (context, index) {
          final tweet = tweets[index];
          return ListTile(
            leading: CircleAvatar(),
            title: Text(tweet.user),
            subtitle: Text(tweet.content),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainScreen(
                  customBody: TweetDetailsScreen(tweet: tweet),
                  customTitle: const Text('Tweet'),
                );
              }));
            },
          );
        });
  }
}
