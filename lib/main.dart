import 'package:deveraapp/Screen/Quick/QuickNoteScreen.dart';
import 'package:deveraapp/Screen/login/ForgotPasswordScreen/ForgotPasswordScreen.dart';
import 'package:deveraapp/Screen/login/LoginScreen.dart';
import 'package:deveraapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/AddCheckList/AddCheckListScreen.dart';
import 'Screen/AddNote/AddNoteScreen.dart';
import 'Screen/Menu/MenuScreen.dart';
import 'Screen/NewTask/NewTask.dart';
import 'Screen/Onboarding/Onboarding.dart';
import 'Screen/Profile/ProfileScreen.dart';
import 'Screen/WorkListScreen/WorkListTodayScreen/WorkListTodayScreen.dart';
import 'Screen/login/ResetPasswordScreen/ResetPasswordScreen.dart';
import 'Screen/login/SuccesfullScreen/SuccesfullScreen.dart';
import 'model/popupadd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AddpopupModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteGenerator.homepage,
        onGenerateRoute: RouteGenerator.generateRoute,
        //home: QuickNoteScreen(),
        theme: ThemeData(
          unselectedWidgetColor: Colors.blue,
          fontFamily: 'AvernirNextRounded'
        ),
      ),
    );
  }
}

