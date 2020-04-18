import 'package:flutter/material.dart';




  class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {


  Widget _top(){
   return Container (
     padding: EdgeInsets.all(0),
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
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Row(children: <Widget>[
               CircleAvatar(
                 backgroundImage: AssetImage("assets/images/interview4.jpg"),
               ),

               SizedBox(width: 10.0),
               Text("Interviewer\'s Mind", style: TextStyle(color: Colors.white),),

             ],
             ),
             IconButton(icon: Icon(Icons.exit_to_app, color: Colors.white), 
             onPressed: null, 
             
             ), 
           ],
           ),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.filter_list),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.transparent)
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0 ),   
            ),
          )

       ],
     ),
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

        children:<Widget>[
          _top(),
          SizedBox(height: 20.0),
          Padding(padding:
          EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              Text(
                "View All"
              )
            ],
          ),
          )
        ]
      ),
      
    );
  }
}