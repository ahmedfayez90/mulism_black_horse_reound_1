import 'package:flutter/material.dart';

class LandingItem extends StatelessWidget {
  LandingItem({
    super.key,
    required this.imageName,
    required this.text,
    this.onPress,
  });
  String imageName;
  String text;
  VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPress,
      child: Container(
        width: size.width * 0.4,
        height: size.height * 0.15,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/$imageName.png"),
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
