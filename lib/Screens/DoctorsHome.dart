import 'package:flutter/material.dart';
import 'package:virya/authentication/authenticate.dart';

class DoctorsHome extends StatefulWidget {
  const DoctorsHome({Key? key}) : super(key: key);

  @override
  State<DoctorsHome> createState() => _DoctorsHomeState();
}

class _DoctorsHomeState extends State<DoctorsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Doctor")),
      body: InkWell(
        onTap: () {
          logOut(context);
          
        },
        child: Container(child: Text("Click to logout"),),
      ),
    );
  }
}
