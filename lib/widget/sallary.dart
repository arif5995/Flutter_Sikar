import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

class Sallary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appConfig.color.ColorPrimaryDark,
      body: Center(
        child: Text(
          "Sallary",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}