import 'package:flutter/material.dart';

import '../../routes.dart';

class NewTask extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF96060),
        elevation: 0,
        title: Text('Work List',style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () { Navigator.of(context).pushNamed(RouteGenerator.worklistpage);},
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 60,
              color: Color(0xffF96060),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: MediaQuery.of(context).size.height*0.8,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('For',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Container(
                              alignment: AlignmentDirectional.center,
                              width: 90,
                                height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xfff4f4f4),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Text('Assignee',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 20,),
                            Text('In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Container(
                              alignment: AlignmentDirectional.center,
                              width: 90,
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Color(0xfff4f4f4),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Text('Project',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          color: Color(0xfff4f4f4),
                          padding: EdgeInsets.only(left: 20,top:20,bottom: 20),
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Title',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 20,right:16,top:16,bottom: 12),
                          child: Text('Description',style: TextStyle(fontSize: 16,color: Color(0xff9e9e9e)),),
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  )
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                color: Color(0xfff8f8f8),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                )
                              ),
                              child: IconButton(
                                icon: ImageIcon(AssetImage("assets/images/AttachedIcon.png")),
                                onPressed: () {  },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Due Date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  SizedBox(width: 10,),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 95,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Color(0xff6074f9),
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child: Text('Anytime',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                                  )
                                ],
                              ),
                              SizedBox(height: 25,),
                              Text('Add Member',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 10,),
                              Container(
                                alignment: Alignment.center,
                                width: 90,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xfff4f4f4),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Text('Anyone',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color:Color(0xfff96060)
                          ),
                          child: FlatButton(
                            onPressed: (){},
                            child: Text('Add Task',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}