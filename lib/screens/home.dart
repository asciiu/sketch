import 'dart:html';
import 'package:flutter/material.dart';
import 'package:login_page/widgets/input_field.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding:
            EdgeInsets.only(top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.blue[300],
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 70.0, right: 50.0, left: 50.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.black87,
                              backgroundImage: AssetImage(
                                'assets/cool-cat.jpg',
                              ),
                              radius: 70.0,
                            ),
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Text(
                              "Let's get you set up",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Text(
                              "It should only take a couple of seconds",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.black87,
                              child: Text(
                                ">",
                                style: TextStyle(color: Colors.yellow),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 40.0, right: 70.0, left: 70.0, bottom: 40.0),
                  child: Column(
                    children: <Widget>[
                      //InputField Widget from the widgets folder
                      InputField(label: "Email", content: "your@email.com", obscureText: false),
                      SizedBox(height: 10.0),

                      //InputField Widget from the widgets folder
                      InputField(label: "Username", content: "username", obscureText: false),

                      SizedBox(height: 10.0),

                      InputField(
                        label: "password",
                        content: "password",
                        obscureText: true,
                      ),

                      SizedBox(height: 10.0),

                      //InputField Widget from the widgets folder
                      InputField(label: "confirm password", content: "confirm password", obscureText: true),

                      SizedBox(height: 50.0),

                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 170.0,
                          ),
                          FlatButton(
                            color: Colors.grey[200],
                            onPressed: () => print("cancel"),
                            child: Text("Cancel"),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          FlatButton(
                            color: Colors.blueAccent,
                            onPressed: () => print("save"),
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
