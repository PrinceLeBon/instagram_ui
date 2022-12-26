import 'package:flutter/material.dart';

class StoredStories extends StatelessWidget {
  const StoredStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
              width: 70,
              height: 70,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400])
          ),
          Text('Nouveau')
        ],
      ),
    );
  }
}
