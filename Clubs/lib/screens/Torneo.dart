import 'package:club/screens/blog.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types

class torneo extends StatefulWidget {
  const torneo({Key? key}) : super(key: key);

  @override
  _TorneocreenState createState() => _TorneocreenState();
}

class _TorneocreenState extends State<torneo> {
  // our form key
  final _formKey = GlobalKey<FormState>();
  // editing Controller

  @override
  Widget build(BuildContext context) {
    int? _value = 0;
    //first name field
    final nombretorneo = TextFormField(
        autofocus: true,
        keyboardType: TextInputType.name,
        style: TextStyle(color: Colors.black),
        validator: (value) {
          RegExp regex = new RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("Este campo es obligatorio");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid name(Min. 3 Character)");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.tour_sharp,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Escriba el nombre del torneo",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //second name field
    final cantidadequipo = TextFormField(
        autofocus: false,
        keyboardType: TextInputType.name,
        style: TextStyle(color: Colors.black),
        validator: (value) {
          if (value!.isEmpty) {
            return ("Este campo es obligatorio");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.people_alt,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Escriba la cantidad de equipos ejemplo 20",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //email field
    final numrondas = TextFormField(
        autofocus: false,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.black),
        validator: (value) {
          if (value!.isEmpty) {
            return ("Este campo es obligatorio");
          }
          // reg expression for email validation
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.sports_hockey_outlined,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Escriba el numero de ronas de su torneo ejemplo 10",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password field
    final diciplinatorneo = TextFormField(
        autofocus: false,
        obscureText: true,
        style: TextStyle(color: Colors.black),
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.support_sharp,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Escriba la diciplina del torneo: ejemplo futbol",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final personasdife = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("¿Aceptan Personas especiales ? ",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        Radio(
          value: 1,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value as int?;
            });
          },
          activeColor: Colors.black,
          fillColor: MaterialStateProperty.all(Colors.black),
          focusColor:Colors.black,
          hoverColor: Colors.black,
        ),
        Text("SI",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
      ],
    );
    //signup button
    final siguienteclub = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Colors.redAccent,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => blog(),
                ));
          },
          child: Text(
            "Registrar Torneo",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Registro de Torneo",
        ),
         automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 180,
                        child: Image.asset(
                          "assets/Downloads/CLUB.png",
                          fit: BoxFit.contain,
                        )),
                    SizedBox(height: 20),
                    nombretorneo,
                    SizedBox(height: 20),
                    cantidadequipo,
                    SizedBox(height: 20),
                    numrondas,
                    SizedBox(height: 20),
                    diciplinatorneo,
                    SizedBox(height: 20),
                    personasdife,
                    SizedBox(height: 20),
                    siguienteclub,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
