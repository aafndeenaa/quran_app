import 'package:flutter/material.dart';
import 'package:islami/ui/home_screen.dart';
import 'package:islami/ui/theme.dart';

import 'ui/sura_screen/sura_screen.dart';

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
        HomeScreen.routeName: (buildContext) => const HomeScreen(),
        SuraScreen.routeName: (buildContext) => const SuraScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
