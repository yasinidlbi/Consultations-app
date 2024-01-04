import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  const ImageLogo({Key? key, required this.width, required this.height}) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:  Container(
        width: width,
        height: height,
        foregroundDecoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(150),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
