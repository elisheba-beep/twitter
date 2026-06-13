import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      elevation: WidgetStateProperty.all(0),
      hintText: 'Search',
      leading: Icon(
        Icons.search,
      ),
    );
  }
}
