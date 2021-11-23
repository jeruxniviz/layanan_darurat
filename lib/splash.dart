import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layanan_darurat/nav.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplash();
  }

  startSplash() async {
    var durasi = const Duration(seconds: 5);
    return Timer(durasi, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Nav1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.gripfire,
                  color: Colors.orange,
                  size: 50,
                ),
              ),
              padding: EdgeInsets.all(10),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Center(
                child: Icon(FontAwesomeIcons.starOfLife,
                    color: Colors.pink, size: 50),
              ),
              padding: EdgeInsets.all(10),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: Center(
                child: Icon(Icons.local_police, color: Colors.yellow, size: 50),
              ),
              padding: EdgeInsets.all(10),
            )
          ],
        ),
        Container(
          child: Column(
            children: [
              Spacer(),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: Text("LAYANAN DARURAT",
                        style: GoogleFonts.bowlbyOneSc(
                            fontSize: 30, color: Colors.black)),
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
