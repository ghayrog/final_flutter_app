import 'package:final_flutter_app/string-const.dart';
import 'package:flutter/material.dart';

ThemeData myTheme() => ThemeData(
  primarySwatch: Colors.amber,
  textTheme:const TextTheme(
    headline6: TextStyle(
      fontSize: 20,
      fontFamily: 'Arial',
    ),
    headline5: TextStyle(
      fontSize: 18,
      fontFamily: 'Arial',
    ),
  ),
);

InputDecoration textFieldDecoration(String label, BuildContext context) => InputDecoration(
  filled: true,
  fillColor: Theme.of(context).backgroundColor.withAlpha(100),
  labelText: label,
);

AppBar myAppBar(String myTitle) => AppBar(
  title: Text(myTitle),
);

Widget navDrawer(context) => Drawer(
  child: ListView(
    children: [
      ListTile(
        leading: const Icon(Icons.verified_user),
        title: const Text('Авторизация'),
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      ListTile(
        leading: const Icon(Icons.book),
        title: const Text('Список пользователей'),
        onTap: () {
          Navigator.pushNamed(context, '/users');
        },
      ),
/*      ListTile(
        leading: const Icon(Icons.task),
        title: const Text('Список задач'),
        onTap: () {
          Navigator.pushNamed(context, '/tasks');
        },
      ),
      */
    ],
  ),
);