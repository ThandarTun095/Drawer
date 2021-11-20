import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}


class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage>{




  Widget build(BuildContext context){  

    print("Build Method");

    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
            accountName: Text("Snow"), 
            accountEmail: Text("snow@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.pink,
              //backgroundImage: AssetImage("assets/imgone.jpg"),
              child: Text("User"),),
            )

          ])
        ),
        appBar: AppBar(title: Text("My App")),
        body: MyHome()
        )
    );
  }
}


class MyHome extends StatelessWidget{
  Widget build(BuildContext context){


    return Column(children: [
      OutlinedButton(
        onPressed: (){
         SnackBar bar = SnackBar(content: Text("Deleted"),
         action: SnackBarAction(label: "Undo",onPressed: (){
           print("Undo");
         },),
         );
         ScaffoldMessenger.of(context).showSnackBar(bar);
        },
        child: Text("Delete Me")
      )

    ],);
    

  }

}


