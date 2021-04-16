import 'package:flutter/material.dart';
import 'package:sales_admin/constants.dart';
import 'package:sales_admin/screens/sign_in/sign_in_screen.dart';
import 'package:sales_admin/size_config.dart';
import 'package:flutter/widgets.dart';
import "package:google_fonts/google_fonts.dart";

// This is the best practice
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                  children: <Widget>[
                    Spacer(),
                    Spacer(),
                    Text(
                      "CONVID",
                      style: GoogleFonts.lato(color:kTextColorDark,fontSize:50.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),

                    ),
                    Spacer(),

                    Text("Welcome to CONVID, Starting Serving people!!",
                      style: GoogleFonts.lato(color:kSecondaryColor ,fontSize:17,fontWeight: FontWeight.normal,fontStyle: FontStyle.italic),

                    ),
                    Spacer(),
                    Spacer(),
                    Image.asset(
                      "assets/images/splash_1.png",
                      height: getProportionateScreenHeight(265),
                      width: getProportionateScreenWidth(235),

                    ),

                  ],


              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[


                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
