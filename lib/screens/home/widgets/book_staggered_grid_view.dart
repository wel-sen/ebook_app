import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/screens/home/widgets/custom_tab.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ebook_app/screens/home/widgets/book_item.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final callback;
  BookStaggeredGridView(this.selected, this.pageController, this.callback);

  final booklist = Book.generateBooks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisCount: 4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemCount: booklist.length,
            itemBuilder: (_, index) => BookItem(booklist[index]),
            staggeredTileBuilder: (_) => StaggeredTile.fit(2),
          ),
          Container(),
        ],
      ),
    );
  }
}
