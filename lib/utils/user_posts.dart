import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/option_posts.dart';

class UserPosts extends StatefulWidget {
  final String name;

  const UserPosts({Key? key, required this.name}) : super(key: key);

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  bool likePublication = false;
  bool addToBookmark = false;

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
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red[400]),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey[400]),
                        ),
                      )),
                  const SizedBox(width: 10),
                  Text(
                    widget.name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                  onPressed: _showOptions,
                  splashColor: Colors.transparent,
                  icon: const Icon(
                    Icons.keyboard_control_sharp,
                    size: 30,
                  ))
            ],
          ),
        ),
        //POSTS
        InkWell(
          onDoubleTap: () {
            _likePublication(likePublication);
          },
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey[300],
              //borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        //commentaire et consort
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      _likePublication(likePublication);
                    },
                    splashColor: Colors.grey,
                    child: Container(
                      height: 30,
                      child: (likePublication)
                          ? Image.asset("assets/like2.png")
                          : Image.asset("assets/like1.png"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    child: Image.asset("assets/comment.png"),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 23,
                    child: Image.asset("assets/share.png"),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    _addToBookmark(addToBookmark);
                  },
                  splashColor: Colors.grey,
                  icon: (addToBookmark)
                      ? SizedBox(
                          height: 27,
                          child: Image.asset("assets/bookmark2.png"),
                        )
                      : SizedBox(
                          height: 27,
                          child: Image.asset("assets/bookmark1.png"),
                        )),
            ],
          ),
        ),
        //liké par
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'houndjo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //publication
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                        text: 'houndjo',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' Life is like a bicycle, you have to move forward to keep your balance.')
                  ])),
              Container(height: 5),
              const Text('View all comments',
                  style: TextStyle(color: Colors.grey)),
              Container(height: 5),
              const Text('22 hours ago', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }

  void _likePublication(bool value) {
    setState(() {
      likePublication = !value;
    });
  }

  void _addToBookmark(bool value) {
    setState(() {
      addToBookmark = !value;
    });
  }

  void _showOptions() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const Option_Posts();
        });
  }
}
