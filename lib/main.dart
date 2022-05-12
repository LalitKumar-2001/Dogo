import 'package:flutter/material.dart';
import 'dart:ui';
import 'splash.dart';
import 'Medical.dart';
import 'navigation_bar.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        // border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: const Offset(
              5.0,
              5.0,
            ), //Offset
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
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
                    border: Border.all(width: 2),
                    image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/300/200'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
              margin: const EdgeInsets.only(left: 4.0, right: 4.0),
              padding: const EdgeInsets.all(110.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(5.0),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/400'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outline_outlined,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_and_archive_outlined,
                    size: 30,
                  ),
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
    );
  }
}

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, //To stop showing the debug tag
      home: Splash(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DOGO',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black12,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width:1.0),
                  borderRadius: BorderRadius.circular(3.0)),
              margin: const EdgeInsets.only(top: 3.0, bottom: 5.0),
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:Border.all(width:2,style:BorderStyle.solid,color: Colors.black45),
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
                      border:Border.all(width:2,style:BorderStyle.solid,color: Colors.black45),
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
                      border:Border.all(width:2,style:BorderStyle.solid,color: Colors.black45),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/300/200'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:Border.all(width:2,style:BorderStyle.solid,color: Colors.black45),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/200/320'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:Border.all(width:2,style:BorderStyle.solid,color: Colors.black45),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/44'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.navigate_next,
                    size: 38,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Container(
                // decoration: BoxDecoration(
                //   border: Border.all(width: 2),
                //   borderRadius: BorderRadius.circular(2.0),
                // ),
                child: Center(
              child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [PostCard(), PostCard(), PostCard()]),
            )),
          ],
        ),
      ),

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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Medical()),
          );
        },
        child: const Icon(Icons.add),
      ),
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
        title: const Text('Profile',
            style: TextStyle(
              fontFamily: 'Inspiration',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            )),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go Back!'),
      )),
      bottomNavigationBar: const NavBarState(),
    );
  }
}
