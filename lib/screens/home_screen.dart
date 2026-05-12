import 'tweet_details_screen.dart';
import 'package:basic_app/classes/tweet.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<Tweet> tweets = List.generate(30, (int index) {
    return Tweet(
        id: index,
        user: 'user ${index + 1}',
        content:
            'this is a tweet from user ${index + 1}. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: tweets.length,
        separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
            ),
        itemBuilder: (context, index) {
          final tweet = tweets[index];
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
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
