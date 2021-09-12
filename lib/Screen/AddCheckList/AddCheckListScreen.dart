import 'package:carousel_slider/carousel_slider.dart';
import 'package:deveraapp/Screen/WorkListScreen/WorkListTodayScreen/WorkListTodayScreen.dart';
import 'package:deveraapp/model/popupadd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deveraapp/DataList.dart';
import 'package:provider/provider.dart';

import '../../routes.dart';
class AddCheckListScreen extends StatefulWidget {
  @override
  _AddCheckListScreenState createState() => _AddCheckListScreenState();
}

class _AddCheckListScreenState extends State<AddCheckListScreen> {
  var _currentindexbottombar = 0;

  @override
  Widget build(BuildContext context) {
    var _stateaddpopup = Provider.of<AddpopupModel>(context);
    var _value = true;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffF96060),
          elevation: 0,
          title: Text('Add Check List', style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteGenerator.worklistpage);
            },
          ),
        ),
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
        body:  SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 60,
                color: Color(0xffF96060),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top:40,left: 20,right: 20),
                  height: MediaQuery.of(context).size.height*0.8,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 10,),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',style: TextStyle(fontSize: 16)),
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
                          Text('List Item 1',style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: _value == true? TextDecoration.lineThrough:TextDecoration.none),),
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
                          Text('List Item 2',style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: _value == true? TextDecoration.lineThrough:TextDecoration.none),),
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
                          Text('List Item 3',style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: _value == true? TextDecoration.lineThrough:TextDecoration.none),),
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
                          Text('List Item 4',style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: _value == true? TextDecoration.lineThrough:TextDecoration.none),),
                        ],
                        //trailing: Icon(Icons.check_circle,color: Color(0xffF96060),),
                      ),
                      FlatButton(
                          onPressed: (){},
                          child: Text('+ Add new item',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Text('Choose Color',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.blue,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.pink,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.green,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Color(0xff3d3a62),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Color(0xfff4ca8f),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top:50),
                        width: MediaQuery.of(context).size.width*0.8,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color(0xfff96060),
                        ),
                        child: FlatButton(
                          onPressed: () {  },
                          child:Text('Done',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
