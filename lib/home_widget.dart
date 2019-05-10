import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'visualization_widget.dart';
import 'profile_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Profile(),
    PlaceholderWidget(Colors.orange),
    PlaceholderWidget(Colors.blue),
    PlaceholderWidget(Colors.blue),
  ];
  final List<AppBar> _title = [
    //Home App Bar
    AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 4.0, 
                actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
              onPressed: (){},
              ),
                        new IconButton(icon: new Icon(Icons.menu),
            onPressed: (){},
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )
        ),
        ),
      //Messages App Bar
      AppBar (                                                  
      backgroundColor: Colors.indigoAccent, 
      title: new Text("Messages"),
      
      elevation: 4.0, 
      centerTitle: true,
      ),
      //Chat App Bar
      AppBar (                                                  
      backgroundColor: Colors.blueAccent, 
      title: new Text("Settings"),
      elevation: 4.0, 
      centerTitle: true,
      actions: <Widget>[
          new IconButton(icon: new Icon(Icons.menu),
              onPressed: (){},
              ),
        ],
      ),
      //Profile App Bar
      AppBar (                                                  
      backgroundColor: Colors.deepPurpleAccent, 
      title: new Text("Profile"),
      elevation: 4.0, 
      centerTitle: true,
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _title[_currentIndex],
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.trending_up, color: Colors.blue),
              title: Container(height: 0.0),

     
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search, color: Colors.blue,),
              title: Container(height: 0.0),
              
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.chat_bubble_outline, color: Colors.blue),
              title: Container(height: 0.0)
              
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.contacts, color: Colors.blue),
              title: Container(height: 0.0)
              
            ),



          ],
        ),
        );    
  }
void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
 
}