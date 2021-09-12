import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../routes.dart';
class SuccesfullScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(left:24,right: 24),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/undraw_confirmed_81ex.png'),
            SizedBox(height: 40,),
            Text('Succesful!', style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text(
'''You have succesfully change password.
Please use your new passwords when 
logging in.''',textAlign: TextAlign.center,),
            SizedBox(height: 20,),
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
      )
    );
  }

}