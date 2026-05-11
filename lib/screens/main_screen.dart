import 'package:flutter/material.dart';
import 'package:basic_app/widgets/drawer.dart';
import 'home_screen.dart';
import 'search_screen.dart';
import 'notification_screen.dart';

class MainScreen extends StatefulWidget {
  final Widget? customBody;
  final Function(int)? onTabSelected;

  const MainScreen({super.key, this.customBody, this.onTabSelected});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentScreenIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationScreen(),
  ];

  final List<Widget> appBarWidget = [
    const Text('Home'),
    const Text('Search'),
    const Text('Notifications'),
  ];
  @override
  Widget build(BuildContext context) {
    Widget activeBody = widget.customBody ?? _screens[_currentScreenIndex];

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: appBarWidget[_currentScreenIndex],
        actions: [Icon(Icons.settings)],
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
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
        ],
      ),
    );
  }
}
