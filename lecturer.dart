import'package:flutter/material.dart';

class Lecturer extends StatefulWidget {
  @override
  _LecturerState createState() => _LecturerState();
}

class _LecturerState extends State<Lecturer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text("LECTURER"),
          centerTitle: true,
        ),
        body: Container(
          padding:EdgeInsets.only(top:35.0, left:20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color:Colors.blueAccent,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color:Colors.blueAccent,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height:5.0),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding:EdgeInsets.only(top:15.0, left:20.0),
                child:InkWell(
                  child:Text('Forgot Password?',style:TextStyle(
                    color:Colors.blueAccent,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    decoration:TextDecoration.underline,
                  ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                height:40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.blueAccent,
                  color: Colors.blueAccent,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap:(){},
                    child: Center(
                      child:Text(
                        'LOGIN',
                        style:TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                height:40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.blueAccent,
                  color: Colors.blueAccent,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap:(){

                    },
                    child: Center(
                      child:Text(
                        'REGISTER',
                        style:TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
