import 'package:deveraapp/Screen/WorkListScreen/WorkListTodayScreen/WorkListTodayScreen.dart';
import 'package:deveraapp/model/popupadd.dart';
import 'package:deveraapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:deveraapp/DataList.dart';
import 'package:provider/provider.dart';
class QuickNoteScreen extends StatefulWidget {
  @override
  _QuickNoteScreenState createState() => _QuickNoteScreenState();
}

class _QuickNoteScreenState extends State<QuickNoteScreen> {
  var _currentindexbottombar = 2;

  @override
  Widget build(BuildContext context) {
    var _stateaddpopup = Provider.of<AddpopupModel>(context);
    var _value = true;
    return Scaffold(
        bottomNavigationBar: bottomnavigatorbar(
            pagebottom: pagebottom, currentindex: _currentindexbottombar),
        floatingActionButton: FloatingActionButton(
          //backgroundColor: Color(0xffF96060),

          child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xffF68888), Color(0xffF96060)]
                  )
              ),
              child: Icon(Icons.add)
          ),
          onPressed: () {
            _stateaddpopup.showaddpopup();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 70),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text('Quick Notes',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Expanded(
                      child: ListView(
                        shrinkWrap:true,
                        children: [
                          buildQuickNotesItem(context,'Meeting with Jessica in Central Park at 10:30PM'),
                          buildQuickNotesItem(context, 'Replace dashboard icon with more colorfull ones'),
                          Container(
                            margin: EdgeInsets.only(top:20),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            width: MediaQuery.of(context).size.width,
                            //alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 5,
                                  width: 121,
                                  color: Colors.red,
                                ),
                                SizedBox(height: 13,),
                                Text('Home work today',textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      onChanged: (bool? value) {
                                        setState(() {
                                          NotesDataList[0].check=value;
                                        });
                                      },
                                      value: NotesDataList[0].check,
                                      activeColor: Colors.grey,
                                      shape: RoundedRectangleBorder(),
                                      focusColor: Colors.black,
                                      checkColor: Colors.grey,
                                    ),//Icon(Icons.circle_outlined,color: Colors.blue,),
                                    Text('Buy a milk',style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: NotesDataList[0].check == true? TextDecoration.lineThrough:TextDecoration.none),),
                                  ],
                                  //trailing: Icon(Icons.check_circle,color: Color(0xffF96060),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      onChanged: (bool? value) {},
                                      value: _value,
                                      activeColor: Color(0xffF96060),
                                      shape: RoundedRectangleBorder(),
                                      focusColor: Colors.blue,
                                      checkColor: Color(0xffF96060),
                                    ),//Icon(Icons.circle_outlined,color: Colors.blue,),
                                    Text('Buy a shampoo',style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: _value == true? TextDecoration.lineThrough:TextDecoration.none),),
                                  ],
                                  //trailing: Icon(Icons.check_circle,color: Color(0xffF96060),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      onChanged: (bool? value) {},
                                      value: _value,
                                      activeColor: Color(0xffF96060),
                                      shape: RoundedRectangleBorder(),
                                      focusColor: Colors.blue,
                                      checkColor: Color(0xffF96060),
                                    ),//Icon(Icons.circle_outlined,color: Colors.blue,),
                                    Text('Buy a toothbrush',style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: _value == true? TextDecoration.lineThrough:TextDecoration.none),),
                                  ],
                                  //trailing: Icon(Icons.check_circle,color: Color(0xffF96060),),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(2, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
            Container(
              child: ( Provider.of<AddpopupModel>(context).currentString=='open') ? Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black.withOpacity(0.3),
                child: Center(
                  child: InkWell(
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white
                      ),
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 1,),
                          InkWell(
                            onTap: (){ _stateaddpopup.closeaddpopup();},
                            child: Container(
                              child: Text("Add Task", style: TextStyle(
                                  fontSize: 18
                              ),),
                            ),
                          ),
                          Container(
                            height: 1,
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            color: Colors.black.withOpacity(0.2),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(RouteGenerator.addNotespage);
                            },
                            child: Container(
                              child: Text("Add Quick Note", style: TextStyle(
                                  fontSize: 18
                              ),),
                            ),
                          ),
                          Container(
                            height: 1,
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            color: Colors.black.withOpacity(0.2),
                          ),
                          InkWell(

                            child: Container(
                              child: Text("Add Checklist", style: TextStyle(
                                  fontSize: 18
                              ),),
                            ),
                          ),
                          SizedBox(height: 1,)
                        ],
                      ),
                    ),
                  ),
                ),
              ):Container(),
            )
          ],
        )
    );
  }

  Container buildQuickNotesItem(BuildContext context,String title) {
    return Container(
                     margin: EdgeInsets.only(top:20),
                     padding: EdgeInsets.only(left: 20, right: 20),
                     width: MediaQuery.of(context).size.width,
                     height: 100,
                     alignment: Alignment.topLeft,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           height: 5,
                           width: 121,
                           color: Colors.red,
                         ),
                         SizedBox(height: 13,),
                         Text(title,textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                       ],
                     ),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 2,
                           blurRadius: 4,
                           offset: Offset(2, 3), // changes position of shadow
                         ),
                       ],

                     ),
                   );
  }
}
