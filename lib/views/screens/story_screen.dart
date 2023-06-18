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
    );
  }
}
