import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/add_screen.dart';
import 'package:todo_app/screens/edit_screen.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/utils/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      title: 'To-Do',
      theme: appTheme(),
      routes: {
        '/': (context) => HomeScreen(),
        '/add': (context) => const AddScreen(),
        '/edit': (context) => const EditScreen(),
      },
    ),
  );
}
