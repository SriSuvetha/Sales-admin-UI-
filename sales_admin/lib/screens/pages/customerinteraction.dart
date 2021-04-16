import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:sales_admin/constants.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sales_admin/size_config.dart';

import 'package:sales_admin/components/default_button.dart';
class CustomerInteractionPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:new SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height:50,
                ),

                Text(
                  "Customer Interaction",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(20),
                      color: kSecondaryColor,fontWeight: FontWeight.bold),

                ),
                SizedBox(
                  height:50,
                ),
                buildTextField(),
                SizedBox(
                  height:10,
                ),
                _buildTextField(),
                SizedBox(
                  height:10,
                ),



                DefaultButton(
                  text: "Confirm Shipping details",
                  press: () {
                  }

                ),



              ],
            ),




)
    );
  }


  Widget buildTextField() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.all(12),
      height: maxLines * 70.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: "Status",
          hintText: "Available/Unavailable",
          suffixIcon: IconButton(
            icon:Icon(Icons.send),
            onPressed: (){},
          ),

          filled: true,
        ),
      ),


    );
  }

  Widget _buildTextField() {
    final maxLines = 17;

    return Container(
      margin: EdgeInsets.all(12),
      height: maxLines * 70.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: "Message",
          hintText: "Enter the reason for unavailability",
          suffixIcon: IconButton(
            icon:Icon(Icons.send),
            alignment: Alignment.topCenter,
            onPressed: (){},
          ),

          filled: true,
        ),

      ),
    );
  }


}