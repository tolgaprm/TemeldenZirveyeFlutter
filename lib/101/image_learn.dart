import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Learn'),
        ),
        body: Column(
          children: [
            SizedBox(
                width: 300,
                height: 400,
                child: PngImage(name: ImageItems().appleWithBooks))
          ],
        ));
  }
}

class ImageItems {
  final String appleWithBooks = "apple_with_books";
  final String foto = "foto";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => "assets/$name.png";
}
