import 'package:flutter/material.dart';
import 'package:muslim/mvc/view/screens/quran_screen.dart';
import 'package:muslim/mvc/view/widgets/landing/landing_item.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});
  static String name = 'landingScreen';
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
            title: const Text("مسلم"),
            centerTitle: true,
            leading: Image.asset("assets/dark_mode.png"),
            backgroundColor: Colors.white.withOpacity(0.5),
            elevation: 0.0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LandingItem(
                    imageName: 'quran',
                    text: "القران الكريم",
                    onPress: () {
                      Navigator.pushNamed(context, QuranScreen.name);
                    },
                  ),
                  LandingItem(
                    imageName: 'sebha',
                    text: "التسبيح",
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LandingItem(
                    imageName: 'hadeth',
                    text: "الاحاديث",
                  ),
                  LandingItem(
                    imageName: 'azkar',
                    text: "اذكار",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
