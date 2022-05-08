import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,//To stop showing the debug tag
  home: Home(),
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
      body:Container(
        color: Colors.black12,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2,),
                  borderRadius: BorderRadius.circular(5.0)
              ),
              margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(left:20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/200/300'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/400'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/44'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 38,
                    color: Colors.black,
                  )
                ],
              ) ,
            ),
            Container(
                decoration: BoxDecoration(
                    // border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(5.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          // border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              // leading: Icon(Icons.arrow_drop_down_circle),
                              leading: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(width:2),
                                 image: DecorationImage(
                                   image: NetworkImage('https://picsum.photos/300/200'),
                                   fit: BoxFit.fill,
                                 )
                                )
                              ),
                              title: const Text('Bravo'),
                              subtitle: Text(
                                'Place',
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '"ONE LINE CAPTION"',
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 4.0,right: 4.0),
                              padding: EdgeInsets.all(110.0),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width:2),
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage('https://picsum.photos/400'),
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: (){},
                                      icon: Icon(Icons.thumb_up_alt_outlined,size:30,),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.chat_bubble_outline_outlined,size:30,),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.send_and_archive_outlined,size:30,),
                                ),

                                // FlatButton(
                                //   textColor: const Color(0xFF6200EE),
                                //   onPressed: () {
                                //     // Perform some action
                                //   },
                                //   child: const Text('ACTION 2'),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                    // Container(
                    //   padding: EdgeInsets.all(5.0),
                    //   margin: EdgeInsets.all(5.0),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(width: 2),
                    //       borderRadius: BorderRadius.circular(5)
                    //   ),
                    //   child: Text('First Post'),
                    // ),
                  ],
                )
            )
          ],

        ),
      ),



          // Center(
          //   child: Container(
          //     child: Column(
          //       mainAxisSize: MainAxisSize.min,
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Container(
          //           child:Text('Text-1'),
          //           padding: EdgeInsets.all(30.0),
          //           // margin: EdgeInsets.all(30.0),
          //           color: Colors.cyan[500],
          //         ),
          //         Text('Text-2',
          //         style:TextStyle(
          //           fontSize: 30.0,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.cyan[300],
          //           fontFamily:'Inspiration',
          //         )),
          //         Row(
          //           mainAxisSize: MainAxisSize.max,
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Text('Row Text-1'),
          //             Text('Row Text-1'),
          //             Text('Row Text-1'),
          //           ],
          //         ),
          //
          //       ],
          //     )
          //   ),
          // ),


      // Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     mainAxisSize: MainAxisSize.min,
      //     children:[
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Container(
      //             child:Text('One'),
      //             color:Colors.cyan,
      //             padding: EdgeInsets.all(20.0),
      //             margin: EdgeInsets.all(5.0),
      //           ),Container(
      //             child:Text('Two'),
      //             color:Colors.red,
      //             padding: EdgeInsets.all(20.0),
      //             margin: EdgeInsets.all(5.0),
      //           ),Container(
      //             child:Text('Three'),
      //             color:Colors.green,
      //             padding: EdgeInsets.all(20.0),
      //             margin: EdgeInsets.all(5.0),
      //           ),
      //         ],
      //       ),
      //
      //     ],
      //   ),
      // ),
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
          child:new ElevatedButton(
        onPressed: (){Navigator.pop(context);},
        child: new Text('Go Back!'),
      )),
      bottomNavigationBar: NavBarState(),
    );
  }
}
