import 'package:basic_app/dummy_data/search_data.dart';
import 'package:basic_app/widgets/trending_topic_card.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Trending Topics',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                children: [
                  for (var topic in trendingTopics)
                    TrendingTopicCard(topic: topic),
                ],
              )
            ],
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Today\'s News',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for (var news in todaysNews)
                  ListTile(
                    onTap: () {},
                    title: Text(news),
                  )
              ])
        ],
      ),
    );
  }
}
