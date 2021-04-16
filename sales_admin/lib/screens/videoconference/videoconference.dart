import 'package:flutter/material.dart';
import 'package:sales_admin/screens/splash/components/body.dart';
import 'package:sales_admin/size_config.dart';
import 'package:sales_admin/constants.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:sales_admin/components/default_button.dart';

class VideoScreen extends StatelessWidget {
  static String routeName = "/video";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(

        children: <Widget>[

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(
                    height:50,
                  ),
                  Text(
                    "                    Incoming Call",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getProportionateScreenWidth(20),
                        color: kSecondaryColor),

                  ),

                  SizedBox(
                    height:25,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width:4,
                                  color: Theme.of(context).scaffoldBackgroundColor),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10))
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:new ExactAssetImage('assets/images/profile.png') )),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height:55,
                  ),
                  DefaultButton(
                    text: "Accept the call",
                    press: () {

                    },
                  ),

                  SizedBox(
                    height: 35,
                  ),
                  DefaultButton(
                    text: "Swap to Co worker",
                    press: () {

                    },
                  ),

                  SizedBox(
                    height: 35,
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

