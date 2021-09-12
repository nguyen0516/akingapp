import 'package:carousel_slider/carousel_slider.dart';
import 'package:deveraapp/Screen/WorkListScreen/WorkListTodayScreen/WorkListTodayScreen.dart';
import 'package:deveraapp/model/popupadd.dart';
import 'package:flutter/material.dart';
import 'package:deveraapp/DataList.dart';
import 'package:provider/provider.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _currentindexbottombar = 3;

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
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 70),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text('Profiles', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
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
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Image.asset('assets/images/StephenChow.png'),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Stephen Chow',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Text('hungnm@devera.vn',style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('120',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text('Create Tasks',style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('80',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Text('Completed Tasks',style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top:5,
                      child: IconButton(
                        onPressed: () {  },
                        icon: Icon(Icons.settings),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection:Axis.vertical,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 100,
                        aspectRatio: 16/10,
                        disableCenter: false,
                        viewportFraction:0.5,
                      ),
                      items: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 160,
                          height: 100,
                          decoration:BoxDecoration(
                            color: Color(0xffF96060),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Events',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('12 Tasks',style: TextStyle(fontSize: 14,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 160,
                          height: 100,
                          decoration:BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('To do Task',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('12 Tasks',style: TextStyle(fontSize: 14,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 160,
                          height: 100,
                          decoration:BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Quick Notes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('12 Tasks',style: TextStyle(fontSize: 14,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 20,top:20,right:20),
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                height: 200,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Statistic',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/images/CircleProfile.png'),
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffe8e8e8),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text('60%',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                            SizedBox(height: 14,),
                            Text('Events',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/images/CircleProfile.png',color: Colors.blue,),
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffe8e8e8),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text('40%',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                            SizedBox(height: 14,),
                            Text('To do',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/images/CircleProfile.png',color: Colors.purple,),
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffe8e8e8),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text('80%',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                            SizedBox(height: 14,),
                            Text('Quick Notes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
