
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:async';
import './screens/getting.dart';

  
  class Splash  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Splash> {

@override
void initState(){
  super.initState();
  _mockCheckForSession().then(
    (status){
      if (status){
        _navigatetoHome();
        
      }
      else
      {
        _navigatetoHome();
      }
    }
  ); 
}


  
  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 10000),(){});
    return true;

  }

  void _navigatetoHome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => GETTING()
        )
    );
  }
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.white,
        body: new Stack(
          fit: StackFit.expand, 
            children: <Widget>[
              new Image(
                image: new AssetImage('assets/images/interview1.jpg'),
                fit: BoxFit.fitHeight,
                color: Colors.black87,
                colorBlendMode: BlendMode.darken,

              ),
               Shimmer.fromColors(
                 highlightColor:Color.fromRGBO(48, 126, 204, 1),
                 baseColor:Color.fromRGBO(255, 255, 255, 1),
                 child:Container(
                   child: Center(
                     child: Text("Interviewers' Mind",
                     style: TextStyle(
                       fontSize: 50.0, fontFamily: 'time',
                       shadows: <Shadow>[
                         Shadow(color: Colors.black87,
                         blurRadius: 18.0,
                         offset: Offset.fromDirection(120,12)
                         )

                       ]
                     
                     ),
                     textAlign: TextAlign.center
                     ),
                   ),

                 )
               )

            ],
          ),
          );
        
      
    }
}