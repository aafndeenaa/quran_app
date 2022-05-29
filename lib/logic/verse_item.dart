import 'package:flutter/material.dart';

class VerseItem extends StatelessWidget {
  String verseName;
  int index;

  VerseItem(this.verseName, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "$verseName {$index}",
            style:
                Theme.of(context).textTheme.headline1?.copyWith(fontSize: 40),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}
