import 'package:flutter/material.dart';

 class Test  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Test> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(   
    
   body: Container(
decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    colors: [
      Colors.blue[900],
      Colors.blue[400],
      Colors.white,]
    ),
    
     ),
     
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
             
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(children: <Widget>[
                 
               SizedBox(height:120),
                 CircleAvatar( 
                   backgroundImage: AssetImage("assets/images/interview4.jpg"),
                 ),

                 SizedBox(width: 10.0),
                 Text("Interviewer\'s Mind", style: TextStyle(color: Colors.white),),

               ],
               ),
               IconButton(icon: Icon(Icons.exit_to_app, color: Colors.white), 
               onPressed: null, 
             
               )
             ],
             ),
             
             
         ),  
             
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
          ),
          
          SizedBox(height: 10.0),
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
          ),
       ],
     ),
     )
     );
      
    
  }
}