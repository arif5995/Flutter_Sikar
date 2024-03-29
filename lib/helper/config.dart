import 'package:flutter/material.dart';

class strings {
  static const String app_name = "SIKAR 1.0";
  static const String app_title = "PT. meetAp Mobile Developer";
  static const String text_home = "home";
  static const String text_attendance = "Attendance";
  static const String text_profile = "Profile";
  static const String text_sallary = "Sallary";
  static const String text_login = "Login";
}

class color {
  static const ColorPrimaryDark = Color.fromRGBO(58, 66, 86, 1.0);
  static const ColorPrimary = Color.fromRGBO(64, 75, 96, .9);

  static const Color ColorTeks = Colors.white;
  static const Color ColorTeksError = Colors.red;
  static const Color ColorButton = Colors.green;
  static const Color ColorButtonGradient = Colors.greenAccent;
  static const Color ColorIcon = Colors.white;
}

class icons {
  static const IconData icon_app = Icons.android;
  static const IconData icon_home = Icons.home;
  static const IconData icon_attendence = Icons.timelapse;
  static const IconData icon_sallary = Icons.monetization_on;
  static const IconData icon_profile = Icons.people_outline;
  static const IconData icon_back = Icons.arrow_back;
  static const IconData icon_login_password = Icons.lock;
}

class images {

  static const String img_logo = "assets/logo.jpg";
  static const String img_header = "assets/header.jpg";
  static const String img_profil = "assets/profil.jpg";

  static const String img_attendence_hadir = "assets/icon_hadir.png";
  static const String img_attendence_libur = "assets/icon_libur.png";
  static const String img_attendence_cuti = "assets/icon_cuti.png";
  static const String img_attendence_ijin = "assets/icon_ijin.png";
  static const String img_attendence_alpa = "assets/icon_alpa.png";
}

class datas{

  static const List<String> data_absen_tgl =[
    '11 Jun 2019',
    '12 Jun 2019',
    '13 Jun 2019',
    '14 Jun 2019',
    '15 Jun 2019',
    '16 Jun 2019',
    '17 Jun 2019',
    '18 Jun 2019',
    '19 Jun 2019',
    '20 Jun 2019',
    '21 Jun 2019',
    '22 Jun 2019',
    '23 Jun 2019',
    '24 Jun 2019',
    '25 Jun 2019',
    '26 Jun 2019',
    '27 Jun 2019',
    '28 Jun 2019',
    '29 Jun 2019',
    '30 Jun 2019',
  ];

  static const List<String> data_absen_status = [
    '1',
    '1',
    '0',
    '1',
    '2',
    '2',
    '3',
    '3',
    '1',
    '1',
    '1',
    '2',
    '2',
    '1',
    '1',
    '4',
    '0',
    '1',
    '2',
    '2',
  ];

}

class absen{
  static String findAbsenStatus(String value){
    String result;

    if(value=='1'){
      result = "Hadir";
    }else if(value=='2'){
      result = "Libur";
    }else if(value=='3'){
      result = "Cuti";
    }else if(value=='4'){
      result = "Ijin";
    }else if(value=='0'){
      result = "Alpa";
    }

    return result;
  }

  static String findAbsenIcon(String value){
    String result;

    if(value=='1'){
      result = images.img_attendence_hadir;
    }else if(value=='2'){
      result = images.img_attendence_libur;
    }else if(value=='3'){
      result = images.img_attendence_cuti;
    }else if(value=='4'){
      result = images.img_attendence_ijin;
    }else if(value=='0'){
      result = images.img_attendence_alpa;
    }

    return result;
  }
}
