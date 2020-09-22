import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {

  pressed ()=>debugPrint("I am Happy");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Test"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade400,
        actions: [
          IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("Icon Pressed"),),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: pressed())
        ]

      ),
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.add_a_photo),
          backgroundColor:  Colors.lightGreenAccent,
          onPressed:()=>debugPrint("Floating Pressed")
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.accessible),title:Text("First")),
        BottomNavigationBarItem(icon: Icon(Icons.access_time),title: Text("Second")),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title: Text("Third"))
      ],
        onTap: (int index)=>debugPrint("Tapped Item: $index"),
      ),

      backgroundColor: Colors.amberAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           //InkWell(
            // child: Text("Tap Me!",
            // style: TextStyle(fontSize: 23.4),),
            // onTap: ()=>debugPrint("Hello I am Happy"),
            customButton()
           //)
          ],
        ),
      )

    );
  }


}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
        color: Colors.deepOrange,
        child:
        Center(
            child: Text(
              "Hello World",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle:FontStyle.italic
              ),
            ))

    );
}

class customButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("Hello Again"),backgroundColor: Colors.amberAccent.shade50,);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0)
        ),
          child: Text("Button"),
      ),
    );
  }


}
