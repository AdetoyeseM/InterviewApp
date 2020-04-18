 
import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart';   
import 'package:myproject/Animation/fadeAnimation.dart';


class Signup extends StatefulWidget
{
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {


  bool _obscureText = true;

  Widget fullname(){
    return FadeAnimation (1.5, Container(
      
  
      padding: EdgeInsets.all(10),
  
      decoration: BoxDecoration(
  
          border: Border(bottom: BorderSide(color: Colors.grey[200]))),
  
           child: TextField( 
            keyboardType: TextInputType.text ,
             decoration:InputDecoration(
  
               prefixIcon: Icon(Icons.person, color: Colors.blue,),
  
               hintText: "Full Name:",
  
               hintStyle: TextStyle(color:Colors.grey),
  
               border: InputBorder.none
  
               )
  
           ),
  
       ));
  }
  Widget email(){
    return FadeAnimation (1.5, Container(
      
  
      padding: EdgeInsets.all(10),
  
      decoration: BoxDecoration(
  
          border: Border(bottom: BorderSide(color: Colors.grey[200]))),
  
           child: TextField(
                keyboardType: TextInputType.emailAddress,

             decoration:InputDecoration(
  
               prefixIcon: Icon(Icons.mail, color: Colors.blue,),
  
               hintText: "Email Address:",
  
               hintStyle: TextStyle(color:Colors.grey),
  
               border: InputBorder.none
  
               )
  
           ),
  
       ));
  }

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

Widget phone(){
  return   
     FadeAnimation (1.5, Container(
      
  
      padding: EdgeInsets.all(10),
  
      decoration: BoxDecoration(
  
          border: Border(bottom: BorderSide(color: Colors.grey[200]))),
  
           child: TextField(
             keyboardType: TextInputType.phone,
                
             decoration:InputDecoration(
  
               prefixIcon: Icon(Icons.phone, color: Colors.blue,),
  
               hintText: "Phone Number:",
               
  
               hintStyle: TextStyle(color:Colors.grey),
  
               border: InputBorder.none
  
               )
  
           ),
  
       ));
}

  Widget signupbtn(){
  return  FadeAnimation (1.6, Container(
  
    height: 40,
  
    margin: EdgeInsets.symmetric(horizontal: 10),
  
          decoration: BoxDecoration(
  
    borderRadius: BorderRadius.circular(8),
  
    color: Theme.of(context).primaryColor,
  
    ),
  
    child: Center(
  
      child: Text("Sign Up", style: TextStyle(color: Colors.white,letterSpacing: 2, fontSize: 15, fontWeight: FontWeight.bold )), 
  
      
  
      ),
  
      ));
}

Widget iconbtn(){
  return  FadeAnimation (1.6, Row(
          
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), 
      onPressed: (){
           Navigator.pop(context);
      }),
      Text("Back", textAlign:TextAlign.left, style: TextStyle(color: Colors.white),),
              ],
            ),
  
      );
       
}
 @override
Widget build (BuildContext context)
{
  return Scaffold( 
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
        SizedBox(height: 25),
       iconbtn(),
          
      Padding( padding: const EdgeInsets.all(15.0),  
  
        child: Column(
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: <Widget>[

     
  
     FadeAnimation (1,Text("                 Sign Up",
  
       style: 
  
       TextStyle
  
       (color: Colors.white, fontSize: 40, letterSpacing: 1.5, fontFamily: 'nt'),)),
  
       SizedBox(height:10),
  
        FadeAnimation (1.3,Text('                       Interviewer\'s Mind', style: TextStyle(color:Colors.white,  letterSpacing: 1.5, fontSize: 18))),
  
    ],
  
        ),
  
      ),
  
      SizedBox(height: 15,),
  
      Expanded(
  
        child: SingleChildScrollView(
                  child: Container
  
      (
  
          decoration: BoxDecoration(
  
          color: Colors.white,
  
      borderRadius: BorderRadius.only(topLeft: Radius.circular(80),
  
      topRight: Radius.circular(0),
       ),
  
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

            fullname(),
            email(),
          phone(),
       password(),
  
          ],
  
      ),
  
      
  
       )),
  
  
  
       SizedBox(height: 40,),
  
      signupbtn(),
      

  
       
   
  
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