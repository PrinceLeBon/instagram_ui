import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  const BubbleStories({Key? key, required this.text}) : super(key: key);

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
                BoxDecoration(shape: BoxShape.circle, color: Colors.red[400]),
            child: Padding(
                padding: EdgeInsets.all(3),
              child: Container(
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[400]),
              ),
            )
          ),
          Text(text)
        ],
      ),
    );
  }
}
