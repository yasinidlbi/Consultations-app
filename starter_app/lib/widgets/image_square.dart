import 'package:flutter/material.dart';

class ImageSquare extends StatelessWidget {
  const ImageSquare({Key? key, required this.width, required this.height, required this.url}) : super(key: key);
  final String url;
  // bool isFromNetwork;
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
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(7),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Image(
                image:NetworkImage(url),
                // image:isFromNetwork? NetworkImage(url): AssetImage('assets/images/logo.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
