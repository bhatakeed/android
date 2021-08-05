/**
Created By: Akeed Hussain Bhat
Date: 05-08-2021
Responsive JKBANK Login layout
**/

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.lightGreen,
                    height: 5.0,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  Container(
                    color: Colors.blue,
                    margin: EdgeInsets.only(left: 2.0,right: 2.0),
                    height:5.0,
                    width: MediaQuery.of(context).size.width/3-4,
                  ),
                  Container(
                    color: Colors.red,
                    height:5.0,
                    width: MediaQuery.of(context).size.width/3,
                    child: Padding(padding: EdgeInsets.only(left: 5.0,right:5.0,top:0.0,bottom: 0.0),),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.2,
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color:Colors.blue[100],
                              border: Border.all(color:Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Password",),
                                TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(0)),
                                        borderSide: BorderSide(color: Colors.white54)
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                ),
                                SizedBox(height: 10,),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("SET/RESET MPIN",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text("FORGOT PASSWORD?",style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    FlatButton(onPressed: ()=>null, child: Container(
                                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/3.3,right: MediaQuery.of(context).size.width/3.3,top: 10,bottom: 10),
                                      child: Text("LOGIN",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      /*Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.white,radius: 30.0,foregroundColor: Colors.red,)
                          ],
                        ),
                      )**/
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
