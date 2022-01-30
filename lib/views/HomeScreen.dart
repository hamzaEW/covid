// ignore_for_file: prefer_const_constructors

import 'package:covid_app/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: mainBox,
        appBar: myAppBar("Home",false),
        body:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Padding(
               padding: const EdgeInsets.only(bottom: 5),
               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(height: 13.h,
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(5)
                     ),
                     width: 100.w-20,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 10),
                           child: Column(mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("123,456",
                                   style: TextStyle(
                                       fontSize: 16,
                                       color: mainBlack,
                                       letterSpacing: 1,
                                       fontStyle: FontStyle.italic)),
                               Text("Total Cases",
                                   style: TextStyle(
                                       fontSize: 12,
                                       color:mainBlack,
                                       letterSpacing: 1,
                                       fontStyle: FontStyle.italic)),
                             ],

                           ),
                         ),
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 10.0),
                           child: Container(height: 5.h,width: 5.h,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               fit: BoxFit.contain,
                               image: AssetImage("assets/display/covid-19.png")
                             )
                           ),),
                         ),
                       ],
                     ),
                  )
                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 13.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: 100.w-20,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 13.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: 100.w-20,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 7.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),

                      width: 100.w-20,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 7.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                      ),

                      width: 100.w-20,
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  PreferredSizeWidget myAppBar(String titleText , bool isBack){
    return AppBar(
      centerTitle: true,
      leading: Icon(
        (isBack) ?FontAwesomeIcons.arrowLeft:FontAwesomeIcons.globeAmericas,
        color: mainRed,
      ),
      backgroundColor: mainBlack,
      title:  Text(
        "$titleText",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            activeTrackColor:mainRed,
            inactiveThumbColor:mainRed,
            inactiveTrackColor:Colors.white

        ),
      ],
    );
  }
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }

}
