import 'package:flutter/material.dart'; 
import 'package:myproject/splachscreen.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Interviews' +' Mind',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue, 
      ),
      home: Splash(),
    );
  }
}
 