import 'package:club/screens/Informacion_Club.dart';
import 'package:club/screens/Informacion_Torneo.dart';
import 'package:club/screens/Torneo.dart';
import 'package:club/screens/clubs.dart';
import 'package:club/screens/Servicio_clubs.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore: camel_case_types

// ignore: camel_case_typesvoid main(){
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: blog()));
}

class blog extends StatefulWidget {
  @override
  State<blog> createState() => _BlogState();
  
}

class _BlogState extends State<blog> {
  
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    clubs(),
    servicios_clubs(),
    informacion_Club(),
    torneo(),
    //informacion_Torneo()
  ];
  @override
  Widget build(BuildContext context) {
   
    final items = <Widget>[
      Icon(
        Icons.sports_basketball,
        size: 30,
      ),
      Icon(Icons.home_repair_service_sharp, size: 30),
      Icon(
        Icons.info_outline_rounded,
        size: 30,
      ),
      Icon(Icons.sports_rounded, size: 30),
      /*Icon(
        Icons.info_outline_rounded,
        size: 30,
      ),*/
    ];
     
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido Asociacion RFA'),
        automaticallyImplyLeading: false,
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        child: CurvedNavigationBar(
          key: navigationkey,
          color: Color.fromARGB(255, 218, 181, 15),
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
