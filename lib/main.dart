import 'package:discord/views/bottom_navigation_bar/bottom_navigarion_bar_screen.dart';
import 'package:discord/views/chat_screen/chat_screen.dart';
import 'package:discord/views/home_screen/home_screen.dart';
import 'package:discord/views/notification_screen/hotificarion_screen.dart';
import 'package:discord/views/profile_screen/profile_screen.dart';
import 'package:discord/views/voice/voice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}
