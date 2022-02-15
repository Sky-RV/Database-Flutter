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

  TextEditingController IDtxt = TextEditingController();
  TextEditingController NAMEtxt = TextEditingController();
  TextEditingController PHONEtxt = TextEditingController();

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

      ////////////////////////////// BODY //////////////////////////////
      body: Container(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,

                child: Column(
                  children: [

                    ////////////////////////////// INPUTS //////////////////////////////

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      child: Column(
                        children: [

                          SizedBox(height: 30,),

                          MYinput(label: 'ID', cnt: IDtxt, avatar: Icon(Icons.assignment_ind_outlined)),
                          SizedBox(height: 15,),

                          MYinput(label: 'Name', cnt: NAMEtxt, avatar: Icon(Icons.account_circle)),
                          SizedBox(height: 15,),

                          MYinput(label: 'Phone', cnt: PHONEtxt, avatar: Icon(Icons.phone)),
                          SizedBox(height: 15,)

                        ],
                      ),
                    ),

                    ////////////////////////////// BUTTONS //////////////////////////////

                    SizedBox(height: 50,),

                    // Save
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF6F2C7B),
                                Color(0xFF1720C2)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 360,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text('Save', style: TextStyle(fontSize: 13, color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),

                    // Update
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF6F2C7B),
                                Color(0xFF1720C2)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 360,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text('Update', style: TextStyle(fontSize: 13, color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),

                    // Delete
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF7B2C42),
                                Color(0xFFC21717)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 360,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text('Delete', style: TextStyle(fontSize: 13, color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),

                    // List
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF6F2C7B),
                                Color(0xFF1720C2)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 360,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text('List', style: TextStyle(fontSize: 13, color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              )
            ],
          ),
        ),

        ////////////////////////////// BACKGROUND //////////////////////////////

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

Widget MYinput({label, cnt, avatar}){
  return TextField(
    controller: cnt,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
        focusColor: Color(0xFF050052),
        labelText: label,
        prefixIcon: avatar,
        labelStyle: TextStyle(color: Color(0xFF051242)),
    ),
  );
}

