import 'package:flutter/material.dart';
import 'package:messenger/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: DarkTheme.background,
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
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: List<Widget>.generate(9, (index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          image: DecorationImage(
                              image: AssetImage('assets/$index.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Text(
                        'Lorem ipsum',
                        style: TextStyle(
                          color: DarkTheme.white,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List<Widget>.generate(9, (index) {
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        image: DecorationImage(
                            image: AssetImage('assets/$index.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem',
                          style: TextStyle(
                            color: DarkTheme.white,
                            height: 2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          width: _size.width - 210,
                          child: Text(
                            'Lorem: ipsum dolor sit amet, consectetur adipiscing elit,',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: DarkTheme.white,
                              height: 1.4,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
