import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appConfig.color.ColorPrimaryDark,
      body: GridView.count(
          crossAxisCount: 3,
      children: <Widget>[
        //HOME
        new customGrid(
          icon: appConfig.icons.icon_home,
          iconTitle: appConfig.strings.text_home,
          iconColor: appConfig.color.ColorIcon,
          textColor: appConfig.color.ColorTeks,
          iconSize: 80.0,
          urlWidget: '/urlProfile',
        ),

        //SALLARY
        new customGrid(
          icon: appConfig.icons.icon_sallary,
          iconTitle: appConfig.strings.text_sallary,
          iconColor: appConfig.color.ColorIcon,
          textColor: appConfig.color.ColorTeks,
          iconSize: 80.0,
          urlWidget: '/urlProfile',
        ),

        //PROFILE
        new customGrid(
          icon: appConfig.icons.icon_profile,
          iconTitle: appConfig.strings.text_profile,
          iconColor: appConfig.color.ColorIcon,
          textColor: appConfig.color.ColorTeks,
          iconSize: 80.0,
          urlWidget: '/urlProfile',
        ),


      ],)
    );
  }
}

class customGrid extends StatelessWidget {
  final IconData icon;
  final String iconTitle, urlWidget;
  final Color iconColor, textColor;
  final double iconSize;

  customGrid(
      {this.urlWidget,
        this.textColor,
        this.iconTitle,
        this.iconColor,
        this.iconSize,
        this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      color: appConfig.color.ColorPrimary,
      child: RaisedButton(
        color: appConfig.color.ColorPrimary,
        child: Column(
          children: <Widget>[

            Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),

            Text(
              iconTitle,
              style: TextStyle(color: textColor),
            ),

          ],
        ),
        onPressed: (){
          Navigator.pushNamed(context, urlWidget);
        },
      ),
    );
  }
}