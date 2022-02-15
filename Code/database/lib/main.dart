import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Database',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ////////////////////////////// APP BAR //////////////////////////////

      appBar: AppBar(
        backgroundColor: Color(0xFF5584AC),
        title: Text('Database', style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],
      ),

      ////////////////////////////// BODy //////////////////////////////
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF5584AC),
              Color(0xFF95D1CC),
              Color(0xFFC8E7E4),
            ]
          )
        ),
      ),

    );
  }
}
