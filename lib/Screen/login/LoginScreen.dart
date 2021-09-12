import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24,top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon: BackButtonIcon(),
                      iconSize: 35,
                  ),
                  SizedBox(height: 60,),
                  Text('Welcome back',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                  SizedBox(height: 12),
                  Text('Sign in to continue',style: TextStyle(fontSize: 16,color: Color(0xff9B9B9B)),),
                  SizedBox(height: 48),
                  TextField(
                    style: TextStyle(fontSize: 16,fontFamily: 'AvernirNextRounded',color: Colors.black,fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      labelText: ('Username'),
                      labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ),
                  SizedBox(height: 40),
                  TextField(
                      style: TextStyle(fontSize: 16,fontFamily: 'AvernirNextRounded',color: Colors.black,fontWeight: FontWeight.bold),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: ('Password'),
                        labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(RouteGenerator.forgotpasswordpage);
                          },
                          child: Text('Forgot password',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                  SizedBox(height: 70,),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed(RouteGenerator.worklistpage);
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                      color: Color(0xfff96060),
                      child: Text('Log In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      );
  }
}