import 'package:easyqrapp/admin.dart';
import 'package:easyqrapp/generate.dart';
import 'package:easyqrapp/homepage.dart';
import 'package:easyqrapp/lecturer.dart';
import 'package:easyqrapp/scan.dart';
import 'package:easyqrapp/students.dart';
import 'package:flutter/material.dart';
import 'register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy QR',
      color:Colors.black,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/register': (BuildContext context) => new Register(),
        '/generate': (BuildContext context) => new GeneratePage(),
        '/homepage': (BuildContext context) => new HomePage(),
        '/scan': (BuildContext context) => new ScanPage(),
      },

      home:MyHomePage(),

    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor:Colors.blueAccent,
        body: Column(
        children: <Widget>[
        Expanded(
        flex: 4,
        child:Container(
        width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(420.0)),
    color: Colors.white,
    ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
            SizedBox(height: 32.0),
            Container(
                width: 300.0,
                child:Text(
                  'Easy QR',
                  style: TextStyle(
                     color: Colors.blue, fontWeight: FontWeight.bold, fontSize:32.0),

                ),
            ),
                  Container(
                    width:356.0,
                    height:250.0,
                    child:Image.network("https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX40478458.jpg"),

                  ),
            Container(
              child:Text("Computing & Information Systems", style:TextStyle(fontSize: 20.0,color: Colors.blueAccent)),
            ),SizedBox(height: 15.0),
                  Container(

                    child:Text("SUSL", style:TextStyle(fontSize: 20.0,color: Colors.blueAccent)),
                  ),
            SizedBox(height:60.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context)=> DetailScreen()
                    ),
                    );
                  },
                  backgroundColor:Colors.blueAccent,
                  child: Icon(Icons.arrow_right),
                ),
            ],
        ),
            ],
        ),
        ),
        ),
        ),
    ],

    ),
    );
  }
}
class DetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Easy QR',style: TextStyle(fontSize: 17.0),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('WELCOME',
            style: TextStyle(color: Colors.blueAccent,fontSize: 20.0, fontWeight: FontWeight.bold),),
       SizedBox(height:20.0),
          RaisedButton(
            child:Text(
                "ADMIN",
              style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,

            ),
            ),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> Admin()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: Colors.blue,width:3.0)
            ),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            child:Text(
              "LECTURER",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> Lecturer()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: Colors.blue,width:3.0)
            ),
          ),
          SizedBox(height:10.0),
          RaisedButton(
            child:Text(
              "STUDENT",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> Students()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: Colors.blue,width:3.0)
            ),
          ),
        ],
      ),
    );
  }
}
