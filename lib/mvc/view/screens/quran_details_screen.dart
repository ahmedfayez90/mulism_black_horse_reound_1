import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({Key? key}) : super(key: key);
  static String routeName = 'quranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> listContent = [];

  @override
  Widget build(BuildContext context) {
    SuraDetails suraDetails =
        ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (listContent.isEmpty) {
      readFiles(suraDetails.index);
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/quran_details_background.png"),
          fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(suraDetails.suraName),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: ListView.builder(
            itemCount: listContent.length,
            padding: const EdgeInsets.symmetric(horizontal:40),
            itemBuilder: (context, index) {
              return Text(
                listContent[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void readFiles(int index) async {
    String content =
        await rootBundle.loadString("assets/quran_files/$index.txt");
    setState(() {});
    listContent.add(content);
    print(listContent);
  }
}

class SuraDetails {
  int index;
  String suraName;

  SuraDetails({required this.index, required this.suraName});
}
