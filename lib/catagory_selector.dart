import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatagorySelector extends StatefulWidget {
  @override
  _CatagorySelectorState createState() => _CatagorySelectorState();
}

class _CatagorySelectorState extends State<CatagorySelector> {
   
  @override
  Widget build(BuildContext context) {
    return ListView(
      
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 15,
            width: 115,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/surface1.svg"),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Max Light")
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 15,
            width: 115,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/furniture-and-household.svg"),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Dark Lights", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 15,
            width: 115,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/bed1.svg"),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Bed Light")
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}