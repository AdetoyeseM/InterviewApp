import 'package:flutter/material.dart';
import 'package:myproject/model/slide.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: <Widget>[ 
                      SizedBox(height: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(60),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(slideList[index].imageUrl),
                            fit:BoxFit.cover )),
                          ),
                          SizedBox(height: 40,),
                          Text(slideList[index].title, 
                          style:TextStyle(
                            fontSize: 19, letterSpacing: 2 ,
                            color: Colors.black, 
                            fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(height: 20,),
                             Text( slideList[index].description,
                               style:TextStyle( fontSize: 13, fontFamily: 'nt', color: Colors.black, fontStyle: FontStyle.normal, ),
                               textAlign: TextAlign.center,
                            )
                       ],
                    ) 
                  ],
    );
  }
}