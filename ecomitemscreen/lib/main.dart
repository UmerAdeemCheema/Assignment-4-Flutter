import 'package:flutter/material.dart';
import 'ItemScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("ECom App UI", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.notifications, color: Colors.black,),
            ),
          ]
        ),
        body: ScreenItem(),
        bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
          color: Colors.white,
          child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {                    },
                    child: Icon(Icons.home, color:Colors.purpleAccent)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {                    },
                    child: Icon(Icons.favorite,color:Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {                    },
                    child: Icon(Icons.search, color:Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {},
                    child: Icon(Icons.person, color: Colors.grey)),
              ]),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purpleAccent,
            onPressed: (){},
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),

        
    );
  }
}