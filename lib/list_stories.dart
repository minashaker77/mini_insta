import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {
  const ListStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Row topText = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'استوری ها',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Icon(Icons.play_arrow),
            Text('مشاهده همه', style: TextStyle(fontWeight: FontWeight.bold)),

          ],
        )
      ],
    );
    final Widget stories = Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/me.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  index == 0
                      ? const CircleAvatar(
                    radius: 10,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add,size: 16),
                        )
                      : Container()
                ],
              );
            }));
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
