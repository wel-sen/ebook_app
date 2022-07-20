import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  final Book book;
  const BookCover(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(left: 20),
      height: 250,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              child: Image(
                image: AssetImage(book.imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 170,
            bottom: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red[400],
              ),
              child: Icon(
                Icons.info_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(width: 10),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.purple[900],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  // SizedBox(width: 5),
                  Text(
                    'Audio Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
