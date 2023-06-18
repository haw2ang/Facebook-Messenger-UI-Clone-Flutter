import 'package:flutter/material.dart';

import '../../colors.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkTheme.background,
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .76,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(7),
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/$index.jpg',
                    ),
                    fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2,
                          )),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage('assets/0.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(8),
                      width: 40,
                      height: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(.5),
                        child: Text(
                          '1',
                          style:
                              TextStyle(color: DarkTheme.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.2),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                    ),
                  ),
                  child: Text(
                    'Lorem ipsum',
                    style: TextStyle(
                        color: DarkTheme.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
