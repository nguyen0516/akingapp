import 'package:deveraapp/Screen/WorkListScreen/WorkListTodayScreen/WorkListTodayScreen.dart';
import 'package:deveraapp/model/popupadd.dart';
import 'package:flutter/material.dart';
import 'package:deveraapp/DataList.dart';
import 'package:provider/provider.dart';
class MenuScreen extends StatelessWidget{
  var _currentindexbottombar = 1;
  @override
  Widget build(BuildContext context) {
    var _stateaddpopup = Provider.of<AddpopupModel>(context);
    return Scaffold(
      bottomNavigationBar: bottomnavigatorbar(pagebottom: pagebottom, currentindex: _currentindexbottombar),
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
                    colors: [Color(0xffF68888),Color(0xffF96060)]
                )
            ),
            child: Icon(Icons.add)
        ),
        onPressed: (){
          _stateaddpopup.showaddpopup();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      body: Container(
        padding: EdgeInsets.only(left:20,right: 20,top:60),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text('Project',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 50,),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        buildItemGridView('Project',10),
                        buildItemGridView('Teamworks',5),
                        buildItemGridView('Home',10),
                        buildItemGridView('Meet',10),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 90,
                    left: 20,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xff6074f9),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: (){},
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  Container buildItemGridView(String title,int task) {
    return Container(
                padding: const EdgeInsets.all(15),
                width: 168,
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 46,),
                    Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 16,),
                    Text('${task} Tasks')
                  ],
                ),
              );
  }
}