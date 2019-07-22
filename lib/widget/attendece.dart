import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

class Attendance extends StatelessWidget {
  final data_absen_tgl = appConfig.datas.data_absen_tgl;
  final data_absen_status = appConfig.datas.data_absen_status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appConfig.color.ColorPrimaryDark,
      body: new Container(
        child: ListView.builder(
          itemCount: data_absen_tgl.length,
          itemBuilder: (context, index){

            final absen_tgl = data_absen_tgl[index];
            final absen_status = appConfig.absen.findAbsenStatus(data_absen_status[index]);
            final absen_icon = appConfig.absen.findAbsenIcon(data_absen_status[index]);

            return Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(color: appConfig.color.ColorPrimary),
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '/urlProfile');
                },
                trailing: Text(absen_tgl,
                style: TextStyle(color: appConfig.color.ColorTeks),
                ),
                title: Text(
                  absen_status,
                  style: TextStyle(color: appConfig.color.ColorTeks),
                ),
                subtitle: Text(
                  absen_status,
                  style: TextStyle(color: appConfig.color.ColorTeks),
                ),

                //Posisi Kiri
                leading: Image.asset(absen_icon),
              ),
            );
          },
        ),
      ),
    );
  }
}