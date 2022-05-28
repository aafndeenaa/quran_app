import 'package:flutter/material.dart';
import 'package:islami/screens/sura_screen/sura_screen.dart';
import 'package:islami/ui/home_screen.dart';
import 'package:islami/ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'islami',
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraScreen.routeName: (buildContext) => SuraScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
