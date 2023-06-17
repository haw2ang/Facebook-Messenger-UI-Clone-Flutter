import 'package:flutter/material.dart';
import 'package:messenger/colors.dart';
import 'package:messenger/views/screens/call_screen.dart';
import 'package:messenger/views/screens/chat_screen.dart';
import 'package:messenger/views/screens/people_screen.dart';
import 'package:messenger/views/screens/story_screen.dart';
import 'package:unicons/unicons.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const ChatScreen(),
    const CallScreen(),
    const PeopleScreen(),
    const StoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkTheme.background,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: DarkTheme.gery,
        type: BottomNavigationBarType.fixed,
        backgroundColor: DarkTheme.background,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              UniconsLine.chat,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call_rounded,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
            ),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              UniconsLine.files_landscapes,
            ),
            label: 'Stories',
          ),
        ],
      ),
    );
  }
}
