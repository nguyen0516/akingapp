import 'package:deveraapp/routes.dart';

class Data
{
  final String content;
  final String time;
  bool check;
  Data({
    required this.content,
    required this.time,
    this.check=false
  });
}
  List TaskData = <Data>[
    Data(content: 'Go fishing with Stephen', time: '9:00am'),
    Data(content: 'Meet according with design team..', time: '9:00am'),
    Data(content: 'Go fishing with Stephen', time: '9:00am'),
  ];
List<String> pagebottom = [
  RouteGenerator.homepage,
  RouteGenerator.menupage,
  RouteGenerator.quicknotepage,
  RouteGenerator.profilepage,
];
class NotesData{
  final String content;
  bool check;
  NotesData({
    required this.content,
    this.check=false
  });
}
List NotesDataList = <NotesData>[
  NotesData(content: 'asdad'),
  NotesData(content: 'fffff'),
  NotesData(content: 'asd'),
];