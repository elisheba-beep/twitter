import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String monthAndDay = DateFormat('MMM d').format(now);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.favorite_sharp,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' liked your post'),
                    Text(
                      '.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      monthAndDay,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                Text(
                  'lmao I see it.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
