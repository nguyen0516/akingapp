import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes.dart';

class Onboarding extends StatefulWidget{
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  List<OnboardContent> onboarddata=[
    OnboardContent(
      text: 'Welcome to aking',
      image:'assets/images/undraw_events_2p66.png',
      description:'Whats going to happen tomorrow?'
    )
    ,
    OnboardContent(
      text: 'Work happens',
      image:'assets/images/undraw_superhero_kguv.png',
      description:'Get notified when work happens.'
    ),
    OnboardContent(
      text: 'Tasks and assign',
      image:'assets/images/undraw_analysis_4jis.png',
      description:'Task and assign them to colleagues.'
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: PageView.builder(
                    onPageChanged: (index){
                      setState(() {
                        currentPage=index;
                      });
                    },
                    itemCount: onboarddata.length,
                    itemBuilder:(context, index) => OnboardContent(
                          text: onboarddata[index].text,
                          image:onboarddata[index].image,
                          description: onboarddata[index].description),
                  )
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildDot(index: 0),
                      buildDot(index: 1),
                      buildDot(index: 2)
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/Group1.png',width: MediaQuery.of(context).size.width,),
                      Column(
                        children: [
                          FlatButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed(RouteGenerator.worklistpage);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 48,
                                width: 293,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Text(
                                  'Get Started',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)
                                ),
                              )
                          ),
                          SizedBox(height: 32,),
                          FlatButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed(RouteGenerator.loginpage);
                              },
                              child: Text('Log In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18))
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );
  }

  AnimatedContainer buildDot({index}) {
    return AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  margin: EdgeInsets.only(right: 8),
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: index == currentPage? Colors.black:Colors.blueGrey,
                    borderRadius: BorderRadius.circular(4)
                  ),
                );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
     required this.text, required this.image, required this.description,
  }) ;
  final String text, image, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 90,),
        Image.asset(image),
        SizedBox(height: 50,),
        Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        SizedBox(height: 9,),
        Text(description,style: TextStyle(fontSize: 18))
      ],
    );
  }
}