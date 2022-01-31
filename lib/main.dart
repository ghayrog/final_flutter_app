import 'package:final_flutter_app/theme-data.dart';
import 'package:flutter/material.dart';
import 'string-const.dart';
import 'package:final_flutter_app/RegScreen.dart';
import 'package:final_flutter_app/UserScreen.dart';
import 'package:final_flutter_app/TaskScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const RegScreen(),
        '/users': (context) => const UserScreen(),
        '/tasks': (context) => const TaskMainScreen(),
      },
      title: Strings.appTitle,
      theme: myTheme(),
    );
  }
}

