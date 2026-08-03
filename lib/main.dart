import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox("mybox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.all(Colors.white),
          fillColor: WidgetStateProperty.all(Colors.yellow[800]),
        ),
        appBarTheme: const AppBarTheme(
          shadowColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.yellow,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
