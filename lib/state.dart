import 'package:flutter/material.dart';
class state extends StatefulWidget{
  @override
  _stateState createState() => _stateState();
}

class _stateState extends State<state> {
  int count =0 ;
  var color1;
  void counter()
  { setState(() {
    count = count +1;
    if(count>10)
      { count = count*2;
      }
  });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:AppBar(
        title: Text("Increment"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Increment Me !!",
                style: new TextStyle(
                  color: Colors.grey,
                  fontWeight:  FontWeight.w400,
                  fontSize: 32.0,
                ),),
            ),
            new Expanded(
                child: new Center(
                  child: new Text("Increment - $count",
                    style: new TextStyle(
                      color:Colors.redAccent,
                      fontWeight:  FontWeight.w400,
                      fontSize: 22.0, ),
                )
            )
            ),
            new Expanded(child:new Center(
              child: new FlatButton( color: Colors.redAccent,
                  textColor: Colors.grey,onPressed:counter, child:new Text(
                "Click me!!",
                style: TextStyle(
                  fontSize: 19.9,
                  fontWeight: FontWeight.bold,


                ),
              )),
            ))
          ],
        )
        ),
      );
  }
}