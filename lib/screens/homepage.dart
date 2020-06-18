
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viralvai/screens/controller.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: 1, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon:  SvgPicture.asset("assets/bulb.svg"),
           title: new Text('', style: TextStyle(fontSize: 1),),
         ),
         BottomNavigationBarItem(
           icon:  SvgPicture.asset("assets/iconhome.svg"),
           title: new Text('', style: TextStyle(fontSize: 1),),
         ),
         BottomNavigationBarItem(
          icon:  SvgPicture.asset("assets/iconsettings.svg"),
          title: new Text('', style: TextStyle(fontSize: 1),),
         )
       ],
     ),
      
      backgroundColor: Theme.of(context).primaryColor,
      body:  Column(
        children: <Widget>[
          Container(
              height: 151,
              decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage("assets/image/Circles.png"), 
                fit: BoxFit.cover,),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   Text("Control \n Panel", style: TextStyle(
                     color: Colors.white, 
                     fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1
                      
                      ),),
                    Stack(
                      children: <Widget>[
                        CircleAvatar(
                          
                      radius: 25,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR2569aJKO0b0Vgo0MeWgx6BbKwmHBbZX9a2LEz2oOu55wUQjdR", scale: 11),
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 5,
                      ),
                      )
                      ]
                      
                    )
                  ]
                ),
              ),
              ),
              Expanded(
              child: Container(
              height: 345,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor, 
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25))),
                  child: ListView(
                    children: <Widget>[  
                      Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          
                          horizontal: 11
                        ),
                        child: Row(
                          children: <Widget>[
                            Text("All Room", 
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 18, 
                              fontWeight: FontWeight.bold,
                              letterSpacing: .5
                               ),),
                          ],
                        ),
                      ),
                     Container(
                        child: Column(
                          
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  _selectcard("assets/bed.svg", "Bed Room", "2 Lights", context),
                                  _selectcard("assets/room.svg", "Living Room", "2 Lights", context )
                                  
                                  
                                ],
                              ),
                              
                            ),
                             Padding(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  _selectcard("assets/kitchen.svg", "Kitchen", "3 Lights", context),
                                  _selectcard("assets/bathtube.svg", "Bathroom", "1 Lights", context )
                                  
                                ],
                              ),
                              
                            ),
                             Padding(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  _selectcard("assets/house.svg", "Outdoor", "2 Lights", context ),
                                  _selectcard("assets/balcony.svg", "Balcony", "2 Lights", context )
                                  
                                ],
                              ),
                              
                            ),
                           
                          ],
                        ),
                      )
                      
                      
                    ],
                  ),
                    ],
                  )
            ),
          )     
        ],
      )
      );
      
    
  }
}
Widget _selectcard(String iconUrl, String title, String light, BuildContext context){
  
  return GestureDetector(
                                     onTap: (){
                                       Route _route = MaterialPageRoute(builder: (context) => ControlPage(title,light) );
                                       Navigator.push(context, _route);

                                     },
                                     child:Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    child: Container(
                                      height: 125,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(19)),
                                        
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 11, ),
                                        child: Column(
                                          
                                          children: <Widget>[
                                            SvgPicture.asset(iconUrl),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                 Text(title, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: .5),),
                                            Text(light, style: TextStyle(color: Colors.red),)

                                              ],
                                            )
                                           
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  );
}

