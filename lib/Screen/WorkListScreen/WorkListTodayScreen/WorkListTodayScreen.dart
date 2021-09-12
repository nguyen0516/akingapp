
import 'package:deveraapp/DataList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:deveraapp/model/popupadd.dart';
import '../../../routes.dart';
class WorkListTodayScreen extends StatefulWidget{
  @override
  _WorkListTodayScreenState createState() => _WorkListTodayScreenState();
}

class _WorkListTodayScreenState extends State<WorkListTodayScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  var _currentindexbottombar=0;
  @override
  Widget build(BuildContext context) {
    var _stateaddpopup = Provider.of<AddpopupModel>(context);
    return DefaultTabController(
               length: 2,
               child: Scaffold(
                   appBar: AppBar(
                     centerTitle: true,
                     backgroundColor: Color(0xffF96060),
                     title: Text('Work List',style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                     actions: [
                       IconButton(
                           onPressed: (){
                             _stateaddpopup.showaddpopup();
                           },
                           icon: Image.asset('assets/images/Page 1.png')
                       )
                     ],
                     bottom:  TabBar(
                       tabs: [
                         Tab(
                           child: Text('Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                         ),
                         Tab(
                           child: Text('Month',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                         ),
                       ],
                     ),
                   ),
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
                   body: TabBarView(
                     children: [
                       Stack(
                         children: [
                           Column(
                             children: [
                               Container(
                                 padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                 alignment: Alignment.centerLeft,
                                 child: Text('${DateFormat.yMMMd().format(DateTime.now())}', style: TextStyle(fontSize: 14),),
                               ),
                               Expanded(
                                 child: ListView.builder
                                   (
                                   itemCount: TaskData.length,
                                   itemBuilder: (context,index){
                                     return Padding(
                                       padding: const EdgeInsets.only(left:10,right:10),
                                       child: itemList(index),
                                     );
                                   },
                                 ),
                               ),
                             ],
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
                                           onTap: (){ //_stateaddpopup.closeaddpopup();
                                             Navigator.of(context).pushNamed(RouteGenerator.newtaskpage);
                                              },
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
                                           onTap: (){ //_stateaddpopup.closeaddpopup();
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
                                           onTap: (){ //_stateaddpopup.closeaddpopup();
                                             Navigator.of(context).pushNamed(RouteGenerator.addchecklist);
                                           },
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
                       ),
                       Column(
                         children: [
                           Expanded(
                             child: ListView.builder
                               (
                               itemCount: TaskData.length+1,
                               itemBuilder: (context,index){
                                 if(index==0)
                                 {
                                   return TableCalendar(
                                     firstDay: DateTime(2021),
                                     lastDay: DateTime(2050),
                                     focusedDay: DateTime.now(),
                                     headerStyle: HeaderStyle(
                                         formatButtonVisible: false,
                                         titleCentered: true,
                                         titleTextStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                                     ),
                                     selectedDayPredicate: (day) {
                                       return isSameDay(_selectedDay, day);
                                     },
                                     onDaySelected: (selectedDay, focusedDay) {
                                       setState(() {
                                         _selectedDay = selectedDay;
                                         _focusedDay = focusedDay; // update `_focusedDay` here as well
                                       });
                                     },
                                   ) ;
                                 }
                                 else {
                                   return Padding(
                                     padding: const EdgeInsets.only(left: 10, right: 10),
                                     child: itemList(index-1),
                                   );
                                 }
                               },
                             ),
                           ),
                         ],
                       ),
                     ],
                   )
               ),
    );

  }
  Container itemList(int index) {
    return Container(
                      margin: EdgeInsets.fromLTRB(0,5,0,5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              offset: Offset(0.0, 3)
                          )
                        ],
                      ),
                      child: Slidable(
                        actionPane: SlidableScrollActionPane(),
                        actionExtentRatio: 0.15,
                        secondaryActions: [
                          IconSlideAction(
                            color: Colors.white,
                            iconWidget: ImageIcon(AssetImage('assets/images/PencilIcon.png'),color:TaskData[index].check == true? Color(0xffF96060):Colors.blue),
                            onTap: () {},
                          ),
                          IconSlideAction(
                            color: Colors.white,
                            iconWidget: ImageIcon(AssetImage('assets/images/BinIcon.png'),color:TaskData[index].check == true? Color(0xffF96060):Colors.blue),
                            onTap: () {},
                          ),
                        ],
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            ListTile(
                              leading: Checkbox(
                                onChanged: (bool? value) {
                                  setState(() {
                                    TaskData[index].check = value!;
                                  });
                                },
                                value: TaskData[index].check,
                                activeColor: Color(0xffF96060),
                                shape: CircleBorder(),
                                focusColor: Colors.blue,
                              ),//Icon(Icons.circle_outlined,color: Colors.blue,),
                              title: Text(TaskData[index].content,style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold, decoration: TaskData[index].check == true? TextDecoration.lineThrough:TextDecoration.none),),
                              subtitle: Text(TaskData[index].time,style: TextStyle( decoration: TaskData[index].check == true? TextDecoration.lineThrough:TextDecoration.none),),
                              //trailing: Icon(Icons.check_circle,color: Color(0xffF96060),),
                            ),
                            Image.asset('assets/images/Rectangle2.png',color:TaskData[index].check == true? Color(0xffF96060):Colors.blue),
                          ],
                        ),
                      ),
                    );
  }
}

class bottomnavigatorbar extends StatelessWidget {
  const bottomnavigatorbar({
    Key? key,
    required this.pagebottom,
    required int currentindex,
  }) : _currentindex = currentindex, super(key: key);

  final List<String> pagebottom;
  final int _currentindex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index){
        Navigator.of(context).pushNamed(pagebottom[index]);
      },
      backgroundColor: Color(0xff292E4E),
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentindex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/MyTaskIcon.png")),
          label: 'My Task',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/MenuIcon.png")),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/QuickIcon.png")),
          label: 'Quick',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/ProfileIcon.png")),
          label: 'Profile',
        ),
      ],
      unselectedItemColor: Color(0xff8E8E93),
      selectedItemColor: Colors.white,
    );
  }
}
