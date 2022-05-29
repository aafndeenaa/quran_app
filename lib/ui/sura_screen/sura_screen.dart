import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/logic/verse_item.dart';

class SuraScreen extends StatefulWidget {
  static const routeName = "SuraScreen";

  const SuraScreen({Key? key}) : super(key: key);

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    //السطر الي تحت عرفنا متغير عشان نقدر نجيب الاسكرين من navigator في inKwell الي هنعرض فيها الصورة علي حسب الاسم و الاندكس
    var arg = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile('${arg.index + 1}');
    }
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
            title: Text(
              arg.suraName,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : ListView.separated(
                  itemBuilder: (buildContext, index) {
                    return VerseItem(verses[index], index + 1);
                  },
                  separatorBuilder: (buildContext, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                    );
                  },
                  itemCount: verses.length,
                ),
        )
      ],
    );
  }

  // this func ues to load files contains list <String>
  void loadFile(String fileName) async {
    String fileContnet =
        await rootBundle.loadString('assets/files/$fileName.txt');
    List<String> verses = fileContnet.split('\n');
    this.verses = verses;
    setState(() {});
  }
}

class SuraModel {
  String suraName;
  int index;

  SuraModel({required this.index, required this.suraName});
}
