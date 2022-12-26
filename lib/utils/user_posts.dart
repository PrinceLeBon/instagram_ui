import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red[400]),
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey[400]),
                        ),
                      )
                  ),
                  const SizedBox(width: 10),
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const Icon(Icons.keyboard_control_sharp)
            ],
          ),
        ),
        //POSTS
        InkWell(
          onDoubleTap: (){
          },
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey[300],
              //borderRadius: BorderRadius.circular(20)
            ),
          ),
        ) ,
        //commentaire et consort
        Padding(
            padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  SizedBox(width: 10),
                  Icon(Icons.mode_comment_outlined),
                  SizedBox(width: 10),
                  Icon(Icons.share)
                ],
              ),
              const Icon(Icons.bookmark)
            ],
          ),
        ),
        //liké par
        Padding(
            padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: const [
              Text('Liked by '),
              Text('houndjo', style: TextStyle(fontWeight: FontWeight.bold),),
              Text(' and' ),
              Text(' others', style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        //publication
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: 'houndjo',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                      text: ' Jaime cette putain de belle vie'
                  )
                ]
              )
          ),
        ),
      ],
    );
  }
}
