import 'package:basic_app/screens/drawer_screens/bookmarks_screen.dart';
import 'package:basic_app/screens/drawer_screens/settings_privacy_screen.dart';
import 'package:basic_app/screens/settings_screen.dart';
import 'package:basic_app/widgets/logout_modal.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/screens/drawer_screens/profile_screen.dart';
import 'package:basic_app/screens/drawer_screens/premium_screen.dart';
import 'package:basic_app/screens/drawer_screens/lists_screen.dart';
import 'package:basic_app/screens/drawer_screens/communities_screen.dart';
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
      'Bookmarks',
      'Settings and privacy',
      'Log out',
    ];
    final List<Widget> screens = [
      ProfileScreen(),
      PremiumScreen(),
      ListsScreen(),
      CommunitiesScreen(),
      BookmarksScreen(),
      SettingsPrivacyScreen(),
      LogoutModal(),
    ];

    final List<Widget> actionIcons = [
      Icon(Icons.search),
      Icon(Icons.all_inclusive),
      Icon(Icons.more_horiz),
      Icon(Icons.search),
      Icon(Icons.all_inclusive),
      Icon(Icons.all_inclusive),
      Icon(Icons.all_inclusive),
    ];

    final List<bool> centreTitles = [
      false,
      true,
      true,
      false,
      false,
      false,
      true,
    ];
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              margin: EdgeInsets.only(
                right: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              currentAccountPicture: Icon(
                Icons.person,
                size: 30,
              ),
              accountName: Text(
                'User',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'email@user.com',
                style: TextStyle(color: Colors.black),
              ),
              otherAccountsPictures: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(
                    Icons.add_circle_rounded,
                    size: 30,
                  ),
                ),
              ],
              onDetailsPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(
                      customBody: const ProfileScreen(),
                      customTitle: const Text('Profile'),
                      centreTitle: false,
                      onTabSelected: onTabSelected,
                    ),
                  ),
                );
              }),
          Expanded(
            child: ListView.builder(
              itemCount: titles.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Text(titles[index]),
                    onTap: () {
                      if (titles[index] == 'Premium') {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PremiumScreen(),
                          ),
                        );
                      } else if (titles[index] == 'Log out') {
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) => LogoutModal(),
                        );
                      } else {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (context, anim1, anim2) => MainScreen(
                              customBody: screens[index],
                              customTitle: Text(titles[index]),
                              centreTitle: centreTitles[index],
                              customActions: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: IconButton(
                                      icon: actionIcons[index],
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SettingsScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                              ],
                              onTabSelected: onTabSelected,
                            ),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      }
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
