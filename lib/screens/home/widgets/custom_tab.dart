import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final int selected;
  final Function callback;

  CustomTab(this.selected, this.callback);

  final tabs = ['Ebooks', 'AudioBooks'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.all(20),
        height: 56,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 5),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => GestureDetector(
                  onTap: () => callback(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selected == index ? Colors.amber : Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.center,
                    width: (width - 40) / 2 - 10,
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
            separatorBuilder: (_, index) => SizedBox(width: 10),
            itemCount: tabs.length));
  }
}
