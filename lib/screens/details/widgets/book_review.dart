import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';

class BookReview extends StatelessWidget {
  final Book book;
  const BookReview(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${book.score}',
                style: TextStyle(
                  fontSize: 50,
                  color: kfont,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              _buildStar(),
            ],
          ),
          SizedBox(height: 10),
          Text('${book.rating} Rating on Google Play Store.'),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: book.review,
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: '....Read More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                    // height: 5,
                    fontSize: 12,
                  ),
                ),
                // TextSpan(text: ' world!'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3),
    ];
    return Row(
      children: color
          .map(
            (e) => Icon(Icons.star, size: 25, color: e),
          )
          .toList(),
    );
  }
}
