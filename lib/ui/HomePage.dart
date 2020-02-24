import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Snackbar Demo"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text("Snackbar with Only Text"),
                    ));
                  },
                  child: Text(
                    "Snackbar with Only Text",
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 5,
              ),
              FlatButton(
                  color: Colors.amber,
                  onPressed: () {
                    scaffoldKey.currentState.showSnackBar(SnackBar(
                      backgroundColor: Colors.amber,
                      content: Text(
                        "Snackbar with Only Text & Colors",
                        style: TextStyle(color: Colors.black),
                      ),
                    ));
                  },
                  child: Text(
                    "Snackbar with Only Text & Colors",
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: FlatButton(
                    color: Colors.deepOrange,
                    onPressed: () {
                      scaffoldKey.currentState.showSnackBar(SnackBar(
                        backgroundColor: Colors.deepOrange,
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.account_circle,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text(
                              "Snackbar with Only Text & Colors",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.account_circle,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text(
                          "Snackbar with Only Text & Colors",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      scaffoldKey.currentState.showSnackBar(SnackBar(
                        elevation: 5,
                        shape: StadiumBorder(),
                        backgroundColor: Colors.green,
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.border_outer,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text(
                              "Snackbar stadium border",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.border_outer,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text(
                          "Snackbar stadium border",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      scaffoldKey.currentState.showSnackBar(SnackBar(
                        duration: Duration(milliseconds: 1000),
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.purple,
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.access_time,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text(
                              "Snackbar with 1 secound",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.access_time,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text(
                          "Snackbar with 1 secound",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
