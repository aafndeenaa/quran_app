import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';

class HadethItem extends StatelessWidget {
  Hadeth hadeth;

  HadethItem(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, SuraScreen.routeName,
        //     arguments: SuraModel(index: index, suraName: suraName));
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
