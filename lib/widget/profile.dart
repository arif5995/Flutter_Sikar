import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

class Profiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //HEADER
      appBar: new AppBar(
        backgroundColor: appConfig.color.ColorPrimaryDark,
        title: new Text(appConfig.strings.text_profile),
      ),
      backgroundColor: appConfig.color.ColorPrimaryDark,
      body: Center(
        child: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}