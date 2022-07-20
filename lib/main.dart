import 'package:ebook_app/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    EbookApp(),
  );
}

class EbookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
