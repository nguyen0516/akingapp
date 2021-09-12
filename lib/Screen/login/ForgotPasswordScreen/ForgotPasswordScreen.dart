import 'package:flutter/material.dart';

import '../../../routes.dart';

class ForgotPasswordScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 24,right:24),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: (){

                },
                icon: BackButtonIcon(),
                iconSize: 35,
              ),
              SizedBox(height: 60,),
              Text('Forgot Password',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              SizedBox(height: 12),
              Text(
'''Please enter your email below to receive 
your password reset instructions'''
                ,style: TextStyle(fontSize: 16,color: Color(0xff9B9B9B)),),
              SizedBox(height: 48),
              TextField(
                  style: TextStyle(fontSize: 16,fontFamily: 'AvernirNextRounded',color: Colors.black,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: ('Username'),
                    labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed(RouteGenerator.succesfulpage);
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  color: Color(0xfff96060),
                  child: Text('Send Request',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}