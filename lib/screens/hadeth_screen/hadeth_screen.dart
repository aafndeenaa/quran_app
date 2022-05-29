import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/logic/hadeth_item.dart';

class HadethScreen extends StatelessWidget {
  List<Hadeth> myHadeth = [];

  HadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    readHadethfile();

    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_headdr.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        const Text(
          'El ahadeth',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (buildContext, index) {
                return HadethItem(myHadeth[index]);
              },
              separatorBuilder: (buildContext, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 2,
                );
              },
              itemCount: myHadeth.length),
        )
      ],
    );
  }

// هذه الدالة مسولة عن قراءة ملف الحاديث
  // و تقسيمه الي احاديث منفصلة في list ،
  // ثم تقسم الحديث الواحد الي سطور
  // وتاخذ اول سطر منه وهو يحتوي علي list
  // و ثم تاخذ باقي الحديث بعد حذف title
  // و تقوم في حفظه في _hadeth
  // وهو object من Class Hadeth
  void readHadethfile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadeth =
        //تقسيم الاحاديث الي حديث واحد داخل allHadeth
        // عن طريق #
        fileContent.trim().split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String hadeth = allHadeth[i]; //حفظ اول حديث كامل
      hadeth.trim();
      List<String> hadethLines = hadeth.split('\n'); //تقسيم الحديث الي سطور
      hadethLines;

      String hadethTitle = hadethLines[0]; //// حفظ اول سطر title
      hadethLines.removeAt(0); // حذف اول سطر title
      Hadeth _hadeth = Hadeth(hadethTitle,
          hadethLines); // حفظ title و باقي الحديث بعد حذف title مترابطين
      myHadeth.add(_hadeth);
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth(
    this.title,
    this.content,
  );
}
