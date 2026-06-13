import 'package:basic_app/screens/main_screens/elise_screen.dart';
import 'package:basic_app/screens/main_screens/messages_screen.dart';
import 'package:basic_app/screens/settings_screen.dart';
import 'package:basic_app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/widgets/drawer.dart';
import 'main_screens/home_screen.dart';
import 'main_screens/search_screen.dart';
import 'main_screens/notification_screen.dart';

class MainScreen extends StatefulWidget {
  final Widget? customBody;
  final Widget? customTitle;
  final List<Widget>? customActions;
  final Function(int)? onTabSelected;
  final bool? centreTitle;

  const MainScreen(
      {super.key,
      this.customBody,
      this.customTitle,
      this.customActions,
      this.centreTitle,
      this.onTabSelected});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentScreenIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const EliseScreen(),
    const NotificationScreen(),
    const MessagesScreen(),
  ];

  final List<Widget> appBarWidget = [
    const Icon(Icons.earbuds),
    SearchBarWidget(),
    const Text('Elise'),
    const Text('Notifications'),
    const Text('Messages'),
  ];

  final List<Widget> actionIcons = [
    Icon(Icons.all_inclusive),
    Icon(Icons.settings),
    Icon(Icons.all_inclusive),
    Icon(Icons.settings),
    Icon(Icons.all_inclusive),
  ];

  final List<bool> centreTitles = [
    true,
    true,
    true,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    Widget activeBody = widget.customBody ?? _screens[_currentScreenIndex];

    return Scaffold(
      appBar: AppBar(
        centerTitle: widget.centreTitle ?? centreTitles[_currentScreenIndex],
        leading: widget.customBody != null
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            : Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    ),
                  );
                },
              ),
        title: widget.customTitle ?? appBarWidget[_currentScreenIndex],
        actions: widget.customActions ??
            [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: IconButton(
                    icon: actionIcons[_currentScreenIndex],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
      ),
      drawer: DrawerScreen(
        onTabSelected: (index) {
          if (widget.onTabSelected != null) {
            widget.onTabSelected!(index);
          } else {
            if (mounted) {
              setState(() {
                _currentScreenIndex = index;
              });
            }
          }
        },
      ),
      body: activeBody,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: widget.customBody != null ? 0 : _currentScreenIndex,
        onTap: (index) {
          if (widget.customBody != null) {
            if (widget.onTabSelected != null) {
              widget.onTabSelected!(index);
            }
            Navigator.pop(context);
          } else {
            if (mounted) {
              setState(() {
                _currentScreenIndex = index;
              });
            }
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.earbuds), label: 'Elise'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Messages'),
        ],
      ),
    );
  }
}
