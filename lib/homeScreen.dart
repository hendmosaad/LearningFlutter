import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
var emailControl=TextEditingController();
var passwordControl=TextEditingController();
class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    body:
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                        width: double.infinity,
                decoration:  BoxDecoration(
                gradient: LinearGradient(
                                colors:[
                                  Colors.brown,
                                  Colors.amber[800],
                                  Colors.deepOrange
                                ]

                            )  ,
                borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(400))
                        ),
                      child: Center(
                        child: Text('Login'
                            ,style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 90
                          ),
                        ),
                      ),
                    ),
                  ),
              Expanded
                    (
                    flex: 4,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 40,),
                            TextFormField(
                              controller: emailControl,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                suffix: Icon(
                                  Icons.email
                                ),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 )
                                  ,labelText: 'email address'
                              )

                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: passwordControl,
                              keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefix: Icon(
                                    Icons.lock_open_outlined
                                  ),
                                suffix: Icon(
                                        Icons.remove_red_eye
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )
                                    ,labelText: 'password'
                                )

                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 100,

                              child: MaterialButton(
                                  onPressed: (){
                                    print    ( emailControl.text);
                                  },
                                color: Colors.amber
                               , shape:RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(30))
                                ) ,

                                child:Text(
                                    'log in'
                                        ,style: TextStyle(color: Colors.white70,fontSize: 25),
                              )

                              ),
                            ),
                            SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             children: [Text(
                                 'Don\'t you have an account'
                              ),
                               TextButton(
                                 onPressed: (){
                                   print    (' ok');
                                 },
                                 child: Text('please sign up'),

                               )
                             ]
                            )


                          ],
                        ),
                      )
                  )


  ],
          )



      )  ) ;}}

