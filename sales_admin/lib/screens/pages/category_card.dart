import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_admin/constants.dart';
import "package:google_fonts/google_fonts.dart";

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final Function press;
  const CategoryCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFE3F2FD),

          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 12),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.grey[100],

            ),
          ],

        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Text(
                    title,
                    style: GoogleFonts.aBeeZee(color:Colors.black,fontSize:20.0,letterSpacing: 2.0,fontWeight: FontWeight.normal
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Image.asset(image),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
