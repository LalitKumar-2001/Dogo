import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,//To stop showing the debug tag
  home:Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('DOGO',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 5.0,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child:Text('One'),
                color:Colors.cyan,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(5.0),
              ),Container(
                child:Text('Two'),
                color:Colors.red,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(5.0),
              ),Container(
                child:Text('Three'),
                color:Colors.green,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(5.0),
              ),
            ],
          ),
          Container(
            child:Text('One'),
            color:Colors.cyan,
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(5.0),
          ),Container(
            child:Text('Two'),
            color:Colors.red,
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(5.0),
          ),Container(
            child:Text('Three'),
            color:Colors.green,
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(5.0),
          ),
        ],
      ),
      // 3. Container(
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   margin: EdgeInsets.all(30.0),
      //   color: Colors.grey,
      //   child:Text('Hello!'),
      // ),
      // 2. Center(
      //     child: IconButton(
      //     onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Profile()),);},
      //     icon: Icon(Icons.ads_click,size:60,),
      //     color: Colors.lightBlue,
      //   )
      // )
      // 1. Center(
      //   child:
      //     Image.network(
      //       'https://imgs.search.brave.com/l2HBboaRLynRuqpbdOqTm2mDChTOELyLPYRV1KZ1Heo/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5E/RGFONjJGODNlbWhJ/bTd5cUEzdVFBSGFG/aiZwaWQ9QXBp',
      //      // height: double.infinity,
      //      // width: double.infinity,
      //       fit:BoxFit.fill,
      //     ),
      // )

      bottomNavigationBar: NavBarState(),
      // bottomNavigationBar:BottomNavigationBar(
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.black54,
      //   //showUnselectedLabels: false ,
      //   showSelectedLabels: true,
      //   currentIndex: 1,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon:Icon(Icons.home,size:30),
      //       label: 'Home',
      //       //backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon:Icon(Icons.local_hospital,size:30),
      //       label:'Help',
      //       //backgroundColor:Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon:Icon(Icons.store,size:30),
      //       label:'Shop',
      //       activeIcon: Icon(Icons.store_mall_directory_outlined,size:30),
      //       //backgroundColor:Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon:Icon(Icons.account_circle,size:30),
      //       label:'Profile',
      //       activeIcon: Icon(Icons.account_circle_outlined,size:30,color: Colors.amber,),
      //       //backgroundColor:Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat_bubble,size:30),
      //       label: 'TEST',
      //     )
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute( builder: (context) => Profile() ),
          );},
        child:Icon(Icons.add),
      ),
    );
  }
}

class NavBarState extends StatefulWidget {
  const NavBarState({Key? key}) : super(key: key);

  @override
  State<NavBarState> createState() => _NavBarStateState();
}

class _NavBarStateState extends State<NavBarState> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    items: [
    BottomNavigationBarItem(
      icon:Icon(Icons.home,size:30),
      label: 'Home',
      activeIcon: Icon(Icons.home_outlined,color:Colors.teal,size:30),
      backgroundColor: Colors.white,
      ),
    BottomNavigationBarItem(
      icon:Icon(Icons.local_hospital,size:30),
      label:'Help',
      activeIcon: Icon(Icons.local_hospital_outlined,color:Colors.blueAccent,size:30),
      backgroundColor:Colors.white,
      ),
    BottomNavigationBarItem(
      icon:Icon(Icons.store,size:30),
      label:'Shop',
      activeIcon: Icon(Icons.store_mall_directory_outlined,color:Colors.red,size:30),
      backgroundColor:Colors.white,
      ),
    BottomNavigationBarItem(
      icon:Icon(Icons.account_circle,size:30),
      label:'Profile',
      activeIcon: Icon(Icons.account_circle_outlined,size:30,color: Colors.amber,),
      backgroundColor:Colors.white,
      ),
    ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5
    );
  }
}

//Profile Section
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style:TextStyle(
          fontFamily: 'Inspiration',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
        )),
        centerTitle: true,
          backgroundColor: Colors.black,
      ),
      body: Center(
          child:new RaisedButton(
        onPressed: (){Navigator.pop(context);},
        child: new Text('Go Back!'),
      )),
      bottomNavigationBar: NavBarState(),
    );
  }
}
