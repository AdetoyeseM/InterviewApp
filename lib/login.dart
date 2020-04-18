 

import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart';   
import 'package:myproject/Animation/fadeAnimation.dart'; 
import 'package:myproject/test.dart';


class Login extends StatefulWidget
{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  Widget password(){
    return
    FadeAnimation (1.6, Container(
  
      padding: EdgeInsets.all(10),
  
      decoration: BoxDecoration(
  
          border: Border(bottom: BorderSide(color: Colors.grey[200]
          )
          )
          ),
  
           child: TextField(
            obscureText: _obscureText,
             maxLength: 8, 
  
             decoration:InputDecoration(
  
               prefixIcon: Icon(Icons.lock, color:Colors.blue),
  
               hintText: "Password",
  
               hintStyle: TextStyle(color:Colors.grey),
  
               border: InputBorder.none,
               suffixIcon: new GestureDetector(
                 onTap:(){
                   setState((){
                     _obscureText = !_obscureText;
                   });
                 },
                 child:
                 new Icon (_obscureText ? Icons.visibility: Icons.visibility_off)
               )
  
               ),
  
           ),
  
       ));
  }

@override
Widget build (BuildContext context)
{

  return Scaffold(  
    resizeToAvoidBottomPadding: true,
   body: Container(
decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    colors: [
      Colors.blue[900],
      Colors.blue[400],
      Colors.white,
    ]
    ),
     ),



  child:   Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  
    
          children: <Widget>[  
            
        SizedBox(height: 20),
         FadeAnimation (1.2, Row(
           
           children: <Widget>[
             IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), 
      onPressed: (){
        Navigator.pop(context);
      }),
      Text("Back", textAlign:TextAlign.left, style: TextStyle(color: Colors.white),),
           ],
         )), 
      Padding( padding: const EdgeInsets.all(15.0),  
  
        child: Column(
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: <Widget>[
  
     FadeAnimation (1,
     Text("                   Sign In",
  
       style: 
  
       TextStyle
  
       (color: Colors.white, fontSize: 40, letterSpacing: 1.5, fontFamily: 'nt'),)),
  
       SizedBox(height:10),
  
        FadeAnimation (1.3,Text('                       Interviewer\'s Mind', style: TextStyle(color:Colors.white,  letterSpacing: 1.5, fontSize: 18))),
  
    ],
  
        ),
  
      ),
  
      SizedBox(height: 10,),
  
      Expanded(
  
        child: SingleChildScrollView(
                  child: Container
  
      (
  
          decoration: BoxDecoration(
  
          color: Colors.white,
  
      borderRadius: BorderRadius.only(topLeft: Radius.circular(80),
  
      topRight: Radius.circular(0))
  
      ),
  
      
  
      child: Padding(padding: EdgeInsets.all(20),
  
      child: Column(
  
  children: <Widget> [
  
      SizedBox(height: 20,),
  
       FadeAnimation (1.5, Container(
  
       padding: EdgeInsets.all(10),
  
      decoration: BoxDecoration(
  
          color: Colors.white,
  
          borderRadius: BorderRadius.circular(30),
  
          boxShadow: [BoxShadow(
  
    color:Color.fromRGBO(255, 95, 27, .3),
  
    blurRadius: 20,
  
    offset:Offset(0, 10) 
  
          )]
  
      ),
  
      child: Column(
  
          children: <Widget>[
  
     FadeAnimation (1.5, Container(
      
  
      padding: EdgeInsets.all(5),
  
      decoration: BoxDecoration(
  
          border: Border(bottom: BorderSide(color: Colors.grey[200]))
  
          
  
           ),
  
           child: TextField(
  
              keyboardType: TextInputType.emailAddress,
             decoration:InputDecoration(
                  
               prefixIcon: Icon(Icons.mail_outline, color: Colors.blue,),
  
               hintText: "Email or Phone number",
  
               hintStyle: TextStyle(color:Colors.grey),
  
               border: InputBorder.none
  
               )
  
           ),
  
       )),
          password(),

       
  
          ],
  
      ),
  
      
  
       )),
  
  
  
       SizedBox(height: 10,),
  
          FadeAnimation (1.5, Text("Forgot Password?", style: TextStyle(color: Colors.grey, fontFamily: 'nt'))),
  
      SizedBox(height: 10,),
  
         FadeAnimation (1.8, Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              FlatButton(child: 
              new Text ('SIGN IN', style: (TextStyle(fontSize: 15, letterSpacing: 2,fontWeight: FontWeight.bold)),),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), 
                color: Theme.of(context).primaryColor,
                padding: const EdgeInsets.all(15),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test()));
                },
              ),
              ]
         ),
         ),
  
      SizedBox(height: 30,),
  
       FadeAnimation (1.7, Text("Continue with Social Media", style: TextStyle(color: Colors.grey,letterSpacing: 1,  fontFamily: 'nt',),)),
  
      SizedBox(height: 10,),
  
      Row( children: <Widget>[
  
    Expanded(
  
      child:  FadeAnimation (1.8, Container(
  
          height: 50,
  
          decoration: BoxDecoration(
  
            shape: BoxShape.circle, 
  
            color: Colors.white,
  
            boxShadow: [
  
              BoxShadow(color: Colors.blue, offset: 
              Offset(0, 2), blurRadius: 6.0)],
  
  
  
            image: DecorationImage (
  
              image: AssetImage('assets/images/download.png')
  
)
  
             ),
  
               
  
      )),
  
    ),
  
    SizedBox(width: 30,),
  
    Expanded(
  
      child:  FadeAnimation (1.8,Container(
        
           
          height: 50,
  
          decoration: BoxDecoration(
  
            shape: BoxShape.circle, 
  
            color: Colors.white,
  
            boxShadow: [
  
              BoxShadow(color: Colors.blue, offset: Offset(0, 2),
  
              blurRadius: 6.0
  
              )
  
            ],
  
  
  
            image: DecorationImage  (
  
              image: AssetImage('assets/images/gm.png')
  
            )
  
             ),
  
               
  
      )),
  
    ),
  
          ],
  
      ),
  
  ],
  
  
  
      ),
  
      ),
  
      
  
      ),
        ),
  
      ),
  
      ],
  
  ),
   ),
);
    
}
}