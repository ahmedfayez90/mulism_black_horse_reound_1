import 'package:flutter/material.dart';
import 'package:muslim/core/constant.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});
  static String name = 'quranScreen';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/background.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("القران الكريم"),
            centerTitle: true,
            backgroundColor: Colors.white.withOpacity(0.5),
          ),
          body: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset("assets/quran_logo.png"),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                  child: Column(
                    children: [
                      Table(
                        border: TableBorder.all(color: primaryColor, width: 1.5),
                        children: [
                          TableRow(
                            children: [
                              Text(
                                "رقم السورة",
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "أسم السورة",
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "عدد الايات",
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: quranDetails.length,
                          itemBuilder: (context, index) {
                            return Table(
                              border: TableBorder.all(
                                  color: primaryColor, width: 1.5),
                              children: [
                                TableRow(
                                  children: [
                                    Text(
                                      "${quranDetails[index]['id']}",
                                      style:
                                          Theme.of(context).textTheme.titleMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "${quranDetails[index]['name']}",
                                      style:
                                          Theme.of(context).textTheme.titleMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "${quranDetails[index]['total_verses']}",
                                      style:
                                          Theme.of(context).textTheme.titleMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
