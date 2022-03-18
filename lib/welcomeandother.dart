import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:virya/authentication/login.dart';
import 'package:virya/authentication/signup.dart';
import 'package:virya/globals.dart';


//this file has the welcome screen and the student or teacher screen
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          //these top 3 positiones are the illustrations and middle one is logo
          // Positioned(
          //     top: height * 0.047, //40
          //     left: -(height * 0.011), //-10
          //     child: SvgPicture.asset('assets/illustration1.svg')),
          // Positioned(
          //     top: height * 0.282, //240
          //     child: Container(
          //         width: width,
          //         child: Center(child: SvgPicture.asset('assets/logo.svg')))),
          // Positioned(
          //     top: height * 0.399, //340
          //     right: -(height * 0.011), //-10
          //     child: SvgPicture.asset('assets/illustration2.svg')),
          //this positioned is the buttons for get started and login
          Positioned(
            bottom: height * 0.07, //60
            child: Padding(
              padding: EdgeInsets.all(height * 0.032), //28
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Authcheck.process =
                            "signup"; //sets the global variable to sign up and then UI directs to signup process
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctororPatient(),
                          ));
                    },
                    child: Container(
                      //this is the get started button
                      height: height * 0.058, //50
                      width: width - (width * 0.142), //56
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontFamily: "MontserratSB",
                            fontSize: width * 0.05, //20
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.035, //30
                  ),
                  //this is the login line and button
                  Row(
                    children: [
                      Text(
                        'Already a member?  ',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: width * 0.045, //18
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Authcheck.process = "login";
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctororPatient(),
                              ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "MontserratB",
                            fontSize: width * 0.05, //20
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class DoctororPatient extends StatefulWidget {
  const DoctororPatient({ Key? key }) : super(key: key);

  @override
  State<DoctororPatient> createState() => _DoctororPatientState();
}

class _DoctororPatientState extends State<DoctororPatient> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Continue as ',
              style: TextStyle(
                fontFamily: "MontserratB",
                fontSize: 36,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
                radius: 320,
                splashColor: Colors.black.withOpacity(0.2),
                onTap: () {
                  setState(() {
                    role = 'Patient';
                  });
                  Authcheck.process == 'signup'
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ))
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                },
                child: Container(
                    child: Text(
                  '- Patient',
                  style: TextStyle(
                    fontFamily: "MontserratSB",
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ))),
            SizedBox(
              height: 12,
            ),
            InkWell(
              radius: 320,
              splashColor: Colors.black.withOpacity(0.2),
              onTap: () {
                setState(() {
                  role = 'Doctor';
                });
                Authcheck.process == 'signup'
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ))
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
              },
              child: Container(
                  child: Text(
                '- Doctor/Expert',
                style: TextStyle(
                  fontFamily: "MontserratSB",
                  fontSize: 26,
                  color: Colors.black,
                ),
              )),
            ),
          ],
        ),
      )),
    );
  }
}
