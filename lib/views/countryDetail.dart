import 'package:covid_app/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountryDetail extends StatefulWidget {
  CountryDetail({required this.mainText});

String mainText;


  @override
  _CountryDetailState createState() => _CountryDetailState();
}

class _CountryDetailState extends State<CountryDetail> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: myAppBar(widget.mainText, true),
        body: Container(alignment: Alignment.center,
          child:  Text(widget.mainText,style: TextStyle(color: mainRed,fontSize: 20),),
        ),
      ),
    );
  }
  PreferredSizeWidget myAppBar(String titleText , bool isBack){
    return AppBar(
      centerTitle: true,
      leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(
          (isBack) ?FontAwesomeIcons.arrowLeft:FontAwesomeIcons.globeAmericas,
          color: mainRed,
        ),
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
