import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
var currentName;
var currentYear;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: (){
                },
                child: Container(height: 220,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:Border.all(color: Colors.blueAccent,
                  ),
                  color: Colors.white

                  
                ),
                child: Center(child: Text("Chat with consultant")),
                ),
              )
            ],
            
          ),
        ),
      ) ,
    );
  }
}