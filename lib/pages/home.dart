import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble_stories.dart';
import 'package:instagram_ui/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final int smsNumber;

  UserHome({Key? key, required this.smsNumber}) : super(key: key);
  final List people = [
    'john',
    'prince',
    'le bon',
    'amehomin',
    'jefferson',
    'mahugnon',
    'jeff',
    'mcgod'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Instagram', style: TextStyle(color: Colors.black)),
        actions: [
          SizedBox(
            width: 100,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
                    right: 5,
                    child: Container(
                      height: 27,
                      child: Image.asset("assets/sms.png"),
                    )),
                Positioned(
                    right: 0,
                    top: 8,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: Center(
                        child: Text('$smsNumber',
                            style: const TextStyle(fontSize: 10),
                            textAlign: TextAlign.center),
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(width: 15),
        ],
        actionsIconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //STORIES
            SizedBox(
              height: 109,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  }),
            ),
            //POSTS
            ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index]);
                })
          ],
        ),
      ),
    );
  }
}
