import 'package:flutter/material.dart';

class AddpopupModel with ChangeNotifier
{
  String _taskpopup = 'close';
  void showaddpopup()
  {
    _taskpopup = 'open';
    notifyListeners();
  }
  void closeaddpopup()
  {
    _taskpopup = 'close';
    notifyListeners();
  }
  String get currentString => _taskpopup;
}