import 'package:flutter/material.dart';
import 'package:udemy_flutter/bmi_screen.dart';
import 'package:udemy_flutter/counter_screen.dart';
import 'package:udemy_flutter/login_screen.dart';
import 'package:udemy_flutter/messenger_screen.dart';
import 'package:udemy_flutter/users_screen.dart';

void main()
{
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}