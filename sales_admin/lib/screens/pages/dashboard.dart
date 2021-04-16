import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_admin/screens/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sales_admin/screens/videoconference/videoconference.dart';
import 'category_card.dart';
import 'package:sales_admin/size_config.dart';
import 'package:sales_admin/constants.dart';
import "package:google_fonts/google_fonts.dart";



class DashboardPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
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
                    height:75,
                  ),

                  Text(
                    "           Dashboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getProportionateScreenWidth(30),
                        color: kSecondaryColor,fontWeight: FontWeight.bold),

                  ),


                  SizedBox(
                    height:75,
                  ),



                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "  Recent Orders   and No of Orders",
                          image: "assets/images/trends.png",
                          press: () {


                          },
                        ),

                        CategoryCard(
                          title: "  Recent Customers",
                          image: "assets/images/x.png",
                          press: () {

                          },
                        ),
                        CategoryCard(
                          title: "  Attendance and leave request",
                          image: "assets/images/y.png",
                          press: () {


                          },
                        ),
                        CategoryCard(
                          title: "  Salary Accounting",
                          image: "assets/images/z.jpg",
                          press: () {


                          },
                        ),
                        CategoryCard(
                          title: "  Videoconference with customers",
                          image: "assets/images/z.jpg",
                          press: () {
                            Navigator.pushNamed(context, VideoScreen.routeName);

                          },
                        ),
                        CategoryCard(
                          title: "Confirm Shipping",
                          image: "assets/images/z.jpg",
                          press: () {


                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


}



