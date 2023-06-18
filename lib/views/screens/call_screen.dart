import 'package:flutter/material.dart';
import 'package:messenger/colors.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkTheme.background,
    );
  }
}
