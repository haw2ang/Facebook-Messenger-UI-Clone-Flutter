import 'package:flutter/material.dart';
import 'package:messenger/colors.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: DarkTheme.background,
      appBar: AppBar(
        backgroundColor: DarkTheme.background,
        title: Text(
          'Chats',
          style: TextStyle(
            color: DarkTheme.white,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        leadingWidth: 50,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: DarkTheme.iconBackground,
            child: IconButton(
              color: DarkTheme.white,
              icon: Icon(
                Icons.menu,
                color: DarkTheme.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundColor: DarkTheme.iconBackground,
                  child: IconButton(
                    color: DarkTheme.white,
                    icon: Icon(
                      Icons.camera_alt_rounded,
                      color: DarkTheme.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundColor: DarkTheme.iconBackground,
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(
                      UniconsLine.pen,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: _size.width,
            height: 42,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
                color: DarkTheme.iconBackground,
                borderRadius: BorderRadius.circular(30)),
            child: TextField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: DarkTheme.gery,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                    height: 3.8,
                    fontSize: 17,
                    color: DarkTheme.gery,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
            child: Row(
              children: List<Widget>.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                          image: AssetImage('assets/$index.jpg'),
                          fit: BoxFit.cover)),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
