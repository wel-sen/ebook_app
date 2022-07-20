import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookDetail extends StatelessWidget {
  final Book book;
  const BookDetail(this.book, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.type.toUpperCase(),
              style: TextStyle(
                color: Colors.orangeAccent[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              book.name,
              style: TextStyle(
                fontSize: 34,
                color: kfont,
                height: 1.2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Published from ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: book.publisher,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      // TextSpan(text: ' world!'),
                    ],
                  ),
                ),
                Text(DateFormat.yMMMd().format(book.date),
                    style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ],
        ));
  }
}
