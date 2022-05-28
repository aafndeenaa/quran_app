import 'package:flutter/material.dart';
import 'package:islami/screens/sura_screen/sura_screen.dart';

class SuraItem extends StatelessWidget {
  String suraName;
  int index;

  SuraItem(this.suraName, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraScreen.routeName,
            arguments: SuraModel(index: index, suraName: suraName));
      },
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              suraName,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}
