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
                  icon: const Icon(Icons.keyboard_control_sharp))
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
          padding: EdgeInsets.only(left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  (likePublication)
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_border),
                  const SizedBox(width: 10),
                  const Icon(Icons.mode_comment_outlined),
                  const SizedBox(width: 10),
                  const Icon(Icons.share)
                ],
              ),
              IconButton(
                  onPressed: () {
                    _addToBookmark(addToBookmark);
                  },
                  splashColor: Colors.transparent,
                  icon: (addToBookmark)
                      ? const Icon(Icons.bookmark)
                      : const Icon(Icons.bookmark_border)),
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
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                    text: 'houndjo',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' Jaime cette putain de belle vie')
              ])),
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
