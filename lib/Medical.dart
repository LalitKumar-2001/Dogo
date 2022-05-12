import 'package:flutter/material.dart';
class Medical extends StatelessWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicos',
        style: TextStyle(
          fontFamily: 'Inspiration',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                // border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(2),
              ),
              child:Text('Find Nearby Vets'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Image.network('https://picsum.photos/320'),
            ),
            IconButton(
              tooltip: 'Find Nearby Doctors',
              onPressed:(){
                print('Location Access Permission Asked');
              },
              icon:Icon(
                Icons.my_location_outlined,
                size:38,),
            ),
          ],
        ),
      ),
    );
  }
}
