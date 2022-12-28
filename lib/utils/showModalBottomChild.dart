import 'package:flutter/material.dart';

class ShowModalBottomChild extends StatelessWidget {
  final IconData icon;
  final String icondescription;

  const ShowModalBottomChild(
      {Key? key, required this.icon, required this.icondescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(icon),
            Container(
              width: 10,
            ),
            Expanded(child: Text(icondescription)),
          ],
        ),
      ),
    );
  }
}
