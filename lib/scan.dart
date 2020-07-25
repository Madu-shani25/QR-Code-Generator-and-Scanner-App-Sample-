import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Scan"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("RESULT",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
              textAlign:TextAlign.center,
            ),
            Text(qrResult,
                textAlign:TextAlign.center,
                style:TextStyle(fontSize: 10.0)
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child:Text("Scan QR Code"),
              onPressed: (){

              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: Colors.blue,width:3.0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
