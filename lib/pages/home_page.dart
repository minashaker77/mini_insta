import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_insta/list_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  final instaPost = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/me.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              const Text(
                'Mina Shaker',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(left: 16),
              child: const Icon(Icons.more_vert))
        ],
      ),
      Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/flutter-1.webp'),
              fit: BoxFit.fill),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.heart),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.comment),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.paperPlane),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.bookmark),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text('محمد ، علی و 50,000 نفر دیگر این پست را لایک کرده اند.'),
      ),
      Row(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/me.jpg'), fit: BoxFit.fill),
            ),
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'اضافه کردن یک نظر دیگر...'),
            ),
          )
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(right: 8),
        child: Text(
          '1 روز قبل ',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return index == 0
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: const ListStories())
              : instaPost;
        });
  }
}
