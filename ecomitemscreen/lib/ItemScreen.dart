import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';  

class ScreenItem extends StatefulWidget {

  @override
  _ScreenItemState createState() => _ScreenItemState();
}

class _ScreenItemState extends State<ScreenItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(children: [
          Stack(
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Container(alignment: Alignment.topLeft, child:Text('Items', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top:13),
              child: Container(alignment: Alignment.topRight, child:Text('View More', style: TextStyle(color:Colors.purple, fontSize: 16),)),
            )
          ],),

          Container(  
            padding: EdgeInsets.all(10),  
            margin: EdgeInsets.all(5),  
            alignment: Alignment.center,  
            constraints: BoxConstraints.expand(  
                height: 225  
            ),  
            child: imageSlider(context)),  
          
          Container(alignment: Alignment.bottomLeft, child: Text("More Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          ListView(
            shrinkWrap: true,
                      children: [SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                                              child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(color: Colors.grey[300], spreadRadius: 3),
                          ],
                        ),
                  child: ListTile(
                    leading: Icon(Icons.shopping_basket_rounded, color: Colors.purpleAccent) ,
                    title: Text("Clothing"),
                    subtitle: Text("5 items remaining"),
                  ),
                ),
              ),
              Container(
                width: 200,
                  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(color: Colors.grey[300], spreadRadius: 3),
                          ],
                        ),
                child: ListTile(
                  leading: Icon(Icons.flash_on, color: Colors.purpleAccent) ,
                  title: Text("Electronics"),
                  subtitle: Text("5 items remaining"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: 200,
                    decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Colors.grey[300], spreadRadius: 3),
                            ],
                          ),
                  child: ListTile(
                    leading: Icon(Icons.flash_on, color: Colors.purpleAccent) ,
                    title: Text("Appliances"),
                    subtitle: Text("5 items remaining"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                    decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Colors.grey[300], spreadRadius: 3),
                            ],
                          ),
                  width: 200,
                  child: ListTile(
                    leading: Icon(Icons.arrow_right_alt_sharp, color: Colors.purpleAccent) ,
                    title: Text("Others"),
                    subtitle: Text("15 others"),
                  ),
                ),
              )
            ],),
                      ),
                      ]),



            Stack(
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Container(alignment: Alignment.topLeft, child:Text('Popular Items', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top:13),
              child: Container(alignment: Alignment.topRight, child:Text('View More', style: TextStyle(color:Colors.purple, fontSize: 16),)),
            )
          ],),


            Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: List.generate(6, (index){
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.grey[300], spreadRadius: 3),
                        ],
                      ),
                      child: Column(
        children: [
          ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network(
            "https://cdn.vox-cdn.com/thumbor/s9HX5CWof2fv80O9fENKe5pXtXg=/0x0:2040x1360/1200x800/filters:focal(877x866:1203x1192)/cdn.vox-cdn.com/uploads/chorus_image/image/66397697/akrales_181019_3014_0770.0.jpg",
            fit: BoxFit.fitHeight
            ),
          ),

          Container(alignment: Alignment.bottomLeft, child: Text('Note 20 Ultra', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
          Row(
                            children: [
                              Icon(Icons.star , color: Colors.yellow, size: 10,),
                              Icon(Icons.star , color: Colors.yellow, size: 10,),
                              Icon(Icons.star , color: Colors.yellow, size: 10,),
                              Icon(Icons.star , color: Colors.yellow, size: 10,),
                              Icon(Icons.star , color: Colors.yellow, size: 10,),
                              Text("5 (20 reviews)", style: TextStyle(fontSize: 10),),
                            ],
                          ),
        ],
      ),
                    );
                  }),
                ),
            )



        ],),
      )
    );
  }
}

Widget tile(Icon i, String s1, String s2){
  return ListTile(
    leading: Icon(Icons.shopping_basket_rounded, color: Colors.purple) ,
    title: Text("Clothing"),
    subtitle: Text("5 items remaining"),
  );
}

Swiper imageSlider(context){  
  return new Swiper(  
    autoplay: true,  
    itemBuilder: (BuildContext context, int index) {  
      return Column(
        children: [
          new Image.network(  
            "https://lh3.googleusercontent.com/wIcl3tehFmOUpq-Jl3hlVbZVFrLHePRtIDWV5lZwBVDr7kEAgLTChyvXUclMVQDRHDEcDhY=w640-h400-e365-rj-sc0x00ffffff",  
            fit: BoxFit.fitHeight,  
          ),
          Container(alignment: Alignment.bottomLeft, child: Text('Note 20 Ultra', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
          Row(
                        children: [
                          Icon(Icons.star , color: Colors.yellow, size: 10,),
                          Icon(Icons.star , color: Colors.yellow, size: 10,),
                          Icon(Icons.star , color: Colors.yellow, size: 10,),
                          Icon(Icons.star , color: Colors.yellow, size: 10,),
                          Icon(Icons.star , color: Colors.yellow, size: 10,),
                          Text("5 (20 reviews)", style: TextStyle(fontSize: 10),),
                        ],
                      ),
        ],
      );  
    },  
    itemCount: 10,  
    viewportFraction: 0.7,  
    scale: 0.8,  
  );  
}  