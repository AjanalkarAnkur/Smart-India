import 'package:flutter/material.dart';
import 'package:virya/authentication/authenticate.dart';

class Patient extends StatefulWidget {
  const Patient({Key? key}) : super(key: key);

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Patient")),
      body: InkWell(
        onTap: () {
          logOut(context);
          
        },
        child: Container(child: Text("click to logout"),),
      ),
    );
  }
}
