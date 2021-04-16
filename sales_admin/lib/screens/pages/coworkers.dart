import 'package:flutter/material.dart';
import 'card_item.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sales_admin/size_config.dart';
import 'package:sales_admin/constants.dart';

class CoWorkersPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: <Widget>[
              SafeArea(
                  child:new SingleChildScrollView(
                      child: Center(
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height:50,
                              ),
                                  Text(
                                      "                   Co-Workers list",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: getProportionateScreenWidth(20),
                                        color: kSecondaryColor,fontWeight: FontWeight.bold),
                                  ),
                              SizedBox(
                                height:25,
                              ),
                              CardItem(
                                  title: "23456",
                                  text: "Employee Name1"),
                              CardItem(
                                  title: "23457",
                                  text: "Employee Name2"),
                              CardItem(
                                  title: "23458",
                                  text: "Employee Name3"),
                              CardItem(
                                  title: "23459",
                                  text: "Employee Name4"),
                              CardItem(
                                  title: "23460",
                                  text: "Employee Name5"),
                              CardItem(
                                  title: "23461",
                                  text: "Employee Name6"),
                              CardItem(
                                  title: "23462",
                                  text: "Employee Name7"),
                              CardItem(
                                  title: "23463",
                                  text: "Employee Name8"),
                              CardItem(
                                  title: "23464",
                                  text: "Employee Name9"),
                              CardItem(
                                  title: "23465",
                                  text: "Employee Name10"),
                          ]
                  ),
                      ),
    ),
    ),
    ],),
    );
  }
}
