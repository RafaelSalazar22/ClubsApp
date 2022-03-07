import 'package:club/screens/Informacion_Club.dart';
import 'package:club/screens/blog.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types

class servicios_clubs extends StatefulWidget {
  const servicios_clubs({Key? key}) : super(key: key);

  @override
  _ServicescreenState createState() => _ServicescreenState();
}

class _ServicescreenState extends State<servicios_clubs> {
  // our form key
  final _formKey = GlobalKey<FormState>();
  // editing Controller

  @override
  Widget build(BuildContext context) {
    int? _value = -1;
    //first name field
    final diciplina = TextFormField(
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
            Icons.support_sharp,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Escriba el nombre de la diciplina",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //second name field
    final horarioservicio = TextFormField(
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
            Icons.date_range,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText:
              "Escriba el horario de su diciplina ejemplo 12:00pm o 11:00am",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //email field
    final cantidadpersonas = TextFormField(
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
            Icons.people,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText:
              "Escriba el numero de personas que pueden estar en la diciplina ejemplo: 10",
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password field
    final equipoespecial = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("¿Requiere equipo especial? ",
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
          activeColor: Colors.red,
          fillColor: MaterialStateProperty.all(Colors.black),
          focusColor: Colors.black,
          hoverColor: Colors.black,
        ),
        Text("SI",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
      ],
    );
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
          activeColor: Colors.red,
          fillColor: MaterialStateProperty.all(Colors.black),
          focusColor: Colors.black,
          hoverColor: Colors.black,
        ),
        Text("SI",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
      ],
    );
    final enviar = Material(
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
            "Registrar servicio",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Registro de servicio",
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
                    diciplina,
                    SizedBox(height: 20),
                    horarioservicio,
                    SizedBox(height: 20),
                    cantidadpersonas,
                    SizedBox(height: 20),
                    equipoespecial,
                    SizedBox(height: 20),
                    personasdife,
                    SizedBox(height: 20),
                    enviar
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
