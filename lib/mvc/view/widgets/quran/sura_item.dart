import 'package:flutter/material.dart';
import 'package:muslim/core/constant.dart';
import 'package:muslim/mvc/view/screens/quran_details_screen.dart';

class SuraItem extends StatelessWidget {
  SuraItem({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          QuranDetailsScreen.routeName,
          arguments: SuraDetails(
            index: index + 1,
            suraName: "${quranDetails[index]['name']}",
          ),
        );
      },
      child: Table(
        border: TableBorder.all(color: primaryColor, width: 1.5),
        children: [
          TableRow(
            children: [
              Text(
                "${quranDetails[index]['id']}",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              Text(
                "${quranDetails[index]['name']}",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              Text(
                "${quranDetails[index]['total_verses']}",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
