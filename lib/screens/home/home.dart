import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/screens/home/widgets/book_staggered_grid_view.dart';
import 'package:ebook_app/screens/home/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var tabIndex = 0;
  int CurrentIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: Column(
        children: [
          CustomTab(tabIndex, (int index) {
            setState(() {
              tabIndex = index;
            });
            pageController.jumpToPage(index);
          }),
          Expanded(
            child: BookStaggeredGridView(
              tabIndex,
              pageController,
              (int index) => tabIndex = index,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      title: Text(
        'All Books',
        style: TextStyle(
          color: kfont,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu_outlined),
        color: kfont,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search_rounded),
          tooltip: 'search',
          onPressed: () {
            // handle the press
          },
          color: kfont,
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    final bottoms = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline,
    ];
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 56,
      child: ListView.separated(
          padding: EdgeInsets.only(left: 15),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    CurrentIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // height:
                  width: (width - 40) / 5,
                  decoration: CurrentIndex == index
                      ? BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 6,
                              color: Colors.deepOrange,
                            ),
                          ),
                        )
                      : null,
                  child: Icon(
                    bottoms[index],
                    size: 30,
                    color: CurrentIndex == index ? kfont : Colors.grey[500],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(),
          itemCount: bottoms.length),
    );
  }
}
