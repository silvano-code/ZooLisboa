
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPageIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  NewsPageIndicator({
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric( horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index ? Colors.red : Colors.grey,
          ),
        );
      }),
    );
  }
}