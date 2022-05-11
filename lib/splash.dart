import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('Dogo',style: TextStyle(
        fontSize: 74,
        fontWeight: FontWeight.bold,
          fontFamily: 'Inspiration',
        ),
        ),
      ),
    );
  }
}

