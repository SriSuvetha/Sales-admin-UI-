import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sales_admin/size_config.dart';
import 'package:sales_admin/constants.dart';
import "package:google_fonts/google_fonts.dart";
import 'card_item.dart';
import 'box.dart';
class ProfilePage extends StatefulWidget with NavigationStates {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(


      body: Stack(


            children: <Widget>[

              SafeArea(
                child:new SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(
                        height:50,
                      ),
                      Text(
                        "                 Employee Details",
                         textAlign: TextAlign.center,
                        style: TextStyle(fontSize: getProportionateScreenWidth(20),
                            color: kSecondaryColor,fontWeight: FontWeight.bold),

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

                                    image:new ExactAssetImage('assets/images/profile.png')
                                      )),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                    ),
                                    color: Colors.lightBlue,
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height:55,
                      ),
                      Box(),
                      CardItem(
                        title: "Name",
                         text: "Employee Name"),
                      CardItem(
                          title: "Phone No",
                          text: "1234567890"),
                      CardItem(
                          title: "Address",
                          text: "XXXXXXXXX"),
                      CardItem(
                          title: "Email id",
                          text: "abc@gmail.com"),
                      //ListView.builder(

                        //itemBuilder: (context, index) => CardItem(),
                        //shrinkWrap: true,
                        //itemCount: 4,
                      //),









                    ],
                  ),
                ),
                ),
              ),




            ],


      ),
    );
  }



  }

