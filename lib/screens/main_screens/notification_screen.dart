import 'package:basic_app/widgets/notification_screen_widgets/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
          ),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs: [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Mentions',
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return NotificationCard();
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return NotificationCard();
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
