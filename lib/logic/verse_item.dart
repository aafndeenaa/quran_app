import 'package:flutter/material.dart';

class VerseItem extends StatelessWidget {
  String verseaName;
  int index;

  VerseItem(this.verseaName, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // color: Colors.amber,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "$verseaName {$index}",
              style:
                  Theme.of(context).textTheme.headline1?.copyWith(fontSize: 40),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ),
    );
  }
}
