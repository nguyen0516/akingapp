import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResetPasswordSreen extends StatefulWidget{
  @override
  _ResetPasswordSreenState createState() => _ResetPasswordSreenState();
}

class _ResetPasswordSreenState extends State<ResetPasswordSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 24,right: 24),
        child: SafeArea(
          child: SingleChildScrollView(
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
                Text('Reset Password',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                SizedBox(height: 12),
                Text(
'''Reset code was sent to your phone. Please 
enter the code and create new password'''
                  ,style: TextStyle(fontSize: 16,color: Color(0xff9B9B9B)),),
                SizedBox(height: 48),
                TextField(
                    style: TextStyle(fontSize: 16,fontFamily: 'AvernirNextRounded',color: Colors.black,fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: 'Enter your number',
                      labelText: ('Reset code'),
                      labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 40),
                TextField(
                    style: TextStyle(fontSize: 16,fontFamily: 'AvernirNextRounded',color: Colors.black,fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      labelText: ('New password'),
                      labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 40),
                TextField(
                    style: TextStyle(fontSize: 16,fontFamily: 'AvernirNextRounded',color: Colors.black,fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: 'Enter your confirm password',
                      labelText: ('Confirm password'),
                      labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 50),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    color: Color(0xfff96060),
                    child: Text('Change password',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}