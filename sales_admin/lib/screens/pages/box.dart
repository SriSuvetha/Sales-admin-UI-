import 'package:flutter/material.dart';
import 'category_card.dart';

class Box extends StatelessWidget {
  const Box({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      controller: new ScrollController(keepScrollOffset: false),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        CategoryCard(
          title: "APPROVED",
          image: "assets/images/a.png",
          press: () {
          },
        ),

        CategoryCard(
          title: "EMPLOYEE ID",
          image: "assets/images/",
          press: () {
          },

        ),


      ],
    ),
    );
  }
}