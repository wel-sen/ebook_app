import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/screens/details/widgets/book_cover.dart';
import 'package:ebook_app/screens/details/widgets/book_detail.dart';
import 'package:ebook_app/screens/details/widgets/book_review.dart';
import 'package:ebook_app/screens/home/home.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage(this.book, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppbar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BookDetail(book),
              BookCover(book),
              BookReview(book),
            ],
          ),
        ));
  }

  AppBar _buildAppbar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
        color: kfont,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz_outlined),
          color: kfont,
        )
      ],
    );
  }
}
