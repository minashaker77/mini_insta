import 'package:flutter/material.dart';
import 'package:mini_insta/pages/add_page.dart';
import 'package:mini_insta/pages/favorite_page.dart';
import 'package:mini_insta/pages/home_page.dart';
import 'package:mini_insta/pages/profile_page.dart';
import 'package:mini_insta/pages/search_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final AppBar appBar = AppBar(
    title: SizedBox(height: 40, child: Image.asset('assets/images/logo.png')),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.paperPlane,
          color: Colors.black,
        ),
      )
    ],
    backgroundColor: Colors.white,
    elevation: 1,
    leading: const Icon(Icons.camera_alt, color: Colors.black),
  );

  String currentPage = 'home';

  final Map<String , Widget> children = <String , Widget>{
    'home': HomePage(),
    'search': SearchPage(),
    'favorite': FavoritePage(),
    'add': AddPage(),
    'profile': ProfilePage(),};

  void changePge(String namePage) {
    setState(() {
      currentPage = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appBar,
      body: children[currentPage],
      bottomNavigationBar: Container(
        height: 60,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    changePge('home');
                  }),
              IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    changePge('search');
                  }),
              IconButton(
                  icon: const Icon(Icons.add_box),
                  onPressed: () {
                    changePge('add');
                  }),
              IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {
                    changePge('favorite');
                  }),
              IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                    changePge('profile');
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
