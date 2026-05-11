import 'package:flutter/material.dart';
import 'package:basic_app/screens/profile_screen.dart';
import 'package:basic_app/screens/premium_screen.dart';
import 'package:basic_app/screens/lists_screen.dart';
import 'package:basic_app/screens/communities_screen.dart';
import 'package:basic_app/screens/main_screen.dart';

class DrawerScreen extends StatelessWidget {
  final Function(int)? onTabSelected;

  const DrawerScreen({super.key, this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Profile',
      'Premium',
      'Lists',
      'Communities',
    ];
    final List<Widget> screens = [
      ProfileScreen(),
      PremiumScreen(),
      ListsScreen(),
      CommunitiesScreen(),
    ];
    return Drawer(
      child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text(titles[index]),
              onTap: () {
                if (titles[index] == 'Profile') {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (context, anim1, anim2) => MainScreen(
                        customBody: const ProfileScreen(),
                        customTitle: const Text('Profile'),
                        onTabSelected: onTabSelected,
                      ),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                } else {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => screens[index]));
                }
              });
        },
      ),
    );
  }
}
