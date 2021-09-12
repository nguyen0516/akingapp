import 'package:deveraapp/Screen/AddCheckList/AddCheckListScreen.dart';
import 'package:deveraapp/Screen/AddNote/AddNoteScreen.dart';
import 'package:deveraapp/Screen/NewTask/NewTask.dart';
import 'package:deveraapp/Screen/WorkListScreen/WorkListTodayScreen/WorkListTodayScreen.dart';
import 'package:deveraapp/Screen/login/ForgotPasswordScreen/ForgotPasswordScreen.dart';
import 'package:deveraapp/Screen/login/LoginScreen.dart';
import 'package:deveraapp/Screen/login/SuccesfullScreen/SuccesfullScreen.dart';
import 'package:flutter/material.dart';

import 'Screen/Menu/MenuScreen.dart';
import 'Screen/Onboarding/Onboarding.dart';
import 'Screen/Profile/ProfileScreen.dart';
import 'Screen/Quick/QuickNoteScreen.dart';
import 'Screen/WorkListScreen/PopUpAddScreen.dart';

class RouteGenerator
{
  static const String homepage = '/';
  static const String loginpage= '/login';
  static const String forgotpasswordpage = '/forgotpass';
  static const String popupaddpage = '/popupadd';
  static const String worklistpage = '/worklist';
  static const String addNotespage = '/addNotes';
  static const String succesfulpage = '/succesful';
  static const String menupage = '/menu';
  static const String quicknotepage = '/quicknote';
  static const String profilepage = '/profile';
  static const String newtaskpage = '/newtask';
  static const String addnotepage = '/addnote';
  static const String addchecklist = '/addchecklist';

  RouteGenerator._() {}
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
      switch(settings.name)
      {
        case homepage:
          return MaterialPageRoute(
              builder: (_)=> Onboarding(),
          );
        case addNotespage:
          return MaterialPageRoute(
            builder: (_)=> AddNoteScreen(),
          );
        case addchecklist:
          return MaterialPageRoute(
            builder: (_)=> AddCheckListScreen(),
          );
        case newtaskpage:
          return MaterialPageRoute(
            builder: (_)=> NewTask(),
          );
        case menupage:
          return MaterialPageRoute(
            builder: (_)=> MenuScreen(),
          );
        case quicknotepage:
          return MaterialPageRoute(
            builder: (_)=> QuickNoteScreen(),
          );
        case profilepage:
          return MaterialPageRoute(
            builder: (_)=> ProfileScreen(),
          );
        case succesfulpage:
          return MaterialPageRoute(
            builder: (_)=> SuccesfullScreen(),
          );
        case loginpage:
          return MaterialPageRoute(
              builder: (_)=>LoginScreen(),
          );
        case forgotpasswordpage:
          return MaterialPageRoute(
              builder: (_)=>ForgotPasswordScreen()
          );
        case popupaddpage:
          return MaterialPageRoute(
            builder: (_)=> PopUpAddScreen(),
          );
        case worklistpage:
          return MaterialPageRoute(
            builder: (_)=> WorkListTodayScreen(),
          );
        case addNotespage:
          return MaterialPageRoute(
            builder: (_)=> AddNoteScreen(),
          );
        default:
          throw FormatException('Page not found');
      }
  }
}
class RouteException implements Exception {
  final String message;
  const RouteException( this.message);
}