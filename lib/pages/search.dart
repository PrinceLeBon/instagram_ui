import 'package:flutter/material.dart';

import '../utils/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300]
          ),
          child: Row(
            children: [
              Icon(Icons.search_rounded, color: Colors.grey[500],),
              Text('Search', style: TextStyle(color: Colors.grey[500]),)
            ],
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
