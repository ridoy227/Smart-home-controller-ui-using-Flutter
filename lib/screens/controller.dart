import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viralvai/catagory_selector.dart';
import 'homepage.dart';

class ControlPage extends StatefulWidget {
var title;
var light;
ControlPage(this.title, this.light );
  @override
  _ControlPageState createState() => _ControlPageState(this.title, this.light);
}

class _ControlPageState extends State<ControlPage> {
  double val = 2.1;
   var title;
   var light;
  _ControlPageState(this.title, this.light);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: 1,
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
              height: 251,
              decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage("assets/image/Circles.png"), 
                fit: BoxFit.cover,),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        
                       Padding(
                         padding: EdgeInsets.only(top: 35,),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white,),
                          onPressed: (){
                            Navigator.pop(context);

                          },
                        ),
                             Text(title, style: TextStyle(
                               color: Colors.white, 
                               fontSize: 24,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1
                                
                                
                                ),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(light, style: TextStyle(
                                  color: Colors.yellowAccent,
                                ),),
                           ],
                         ),
                       ),
                          
                       Padding(
                         padding: EdgeInsets.only(bottom: 15, right: 5),
                         child:SvgPicture.asset("assets/lightbulb.svg"),
                       )
                      ]
                    ),
                  ),

                  Container(
                    height: 41,
                    child: CatagorySelector(),
                  )




                  








                ],
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
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text("Intensity", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                          SvgPicture.asset("assets/awesome-power-off.svg"),
                          
                          
                          
                          
                        ],),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         Container(
                           padding: EdgeInsets.only(left: 15),
                           child:  SvgPicture.asset("assets/solution1.svg"),
                         ),
                          Slider(
                            value: val,
                            min: 1,
                            max: 25,
                            activeColor: Colors.red,
                            inactiveColor: Colors.grey,
                            divisions: 5,
                            onChanged: (double e) => (e),

                          ),
                          
                          Container(
                           padding: EdgeInsets.only(right: 15),
                           child:  SvgPicture.asset("assets/solution.svg"),
                         ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text("Colors", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                          
                        ],),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                            ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.purple,
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              child: Icon(Icons.add),
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text("Scenes", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                          
                        ],),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 11, horizontal: 45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 49,
                                    width: 119,
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 11, top: 3,),
                                      child: Row(
                                        
                                        children: <Widget>[
                                          SvgPicture.asset("assets/surface2.svg"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Birthday", style: TextStyle(color: Colors.white,fontSize: 18 ) )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 49,
                                    width: 119,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 11, top: 3,),
                                      child: Row(
                                        
                                        children: <Widget>[
                                          SvgPicture.asset("assets/surface2.svg"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Party", style: TextStyle(color: Colors.white,fontSize: 18 ) )
                                        ],
                                      ),
                                    ),
                                  )
                                  
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 11, horizontal: 45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 49,
                                    width: 119,
                                    decoration: BoxDecoration(
                                      color: Colors.purpleAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 11, top: 3,),
                                      child: Row(
                                        
                                        children: <Widget>[
                                          SvgPicture.asset("assets/surface2.svg"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Relax", style: TextStyle(color: Colors.white,fontSize: 18 ) )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 49,
                                    width: 119,
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 11, top: 3,),
                                      child: Row(
                                        
                                        children: <Widget>[
                                          SvgPicture.asset("assets/surface2.svg"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Fun", style: TextStyle(color: Colors.white,fontSize: 18 ) )
                                        ],
                                      ),
                                    ),
                                  )
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                     
                    ],
                  ),
                    ],
                  )
                  
                  
            
          )
            
          )  
           
        ],
        
      )
      
      );
      
  }
}