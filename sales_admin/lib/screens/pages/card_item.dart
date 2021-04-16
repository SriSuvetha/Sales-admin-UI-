import 'package:flutter/material.dart';
class CardItem extends StatelessWidget {
  final String title;
  final String text;
  const CardItem({
    Key key,
    this.title,
    this.text,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
    child:new SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 21.0,
          ),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(width: 24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),

            ],
          ),

        ),
      ),
    ),
    );
  }

}
