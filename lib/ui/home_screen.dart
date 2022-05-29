import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';
import 'package:islami/screens/quran_screen/quran_screen.dart';
import 'package:islami/screens/radio_screen/radio_screen.dart';
import 'package:islami/screens/sebha_screen/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  var screens = [
    QuranScreen(),
    HadethScreen(),
    const SebhaScreen(),
    const RadioScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'islami',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          body: Container(
              padding: const EdgeInsets.all(10), child: screens[_index]),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (index) {
              _index = index;
              setState(() {
                print(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage('assets/images/quran_ic.png')),
                  label: 'Quran',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                      AssetImage('assets/images/hadeth_ic.png')),
                  label: 'Hadeth',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                  label: 'Sebha',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage('assets/images/radio_ic.png')),
                  label: 'Radio',
                  backgroundColor: Theme.of(context).primaryColor),
            ],
          ),
        )
      ],
    );
  }
}
