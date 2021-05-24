import 'dart:math';

import 'package:flutter/material.dart';

//Slivers
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

SliverPersistentHeader makeHeader(String headerText) {
  return SliverPersistentHeader(
    pinned: true,
    floating: false,
    delegate: _SliverAppBarDelegate(
      minHeight: 72.0,
      maxHeight: 80.0,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        color: Color(0xff212121),
        child: Text(
          headerText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      ),
    ),
  );
}

//Cards
class IngredientsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      color: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(18),
            ),
            height: 75,
            width: 75,
            padding: EdgeInsets.all(15),
            child: Image.asset(
              "assets/png/apple-1.png",
              alignment: Alignment.center,
            ),
          ),
          Text(
            "Apple",
            style: TextStyle(),
          ),
          Text(
            "1 piece",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
