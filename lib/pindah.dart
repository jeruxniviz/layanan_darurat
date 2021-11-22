import 'dart:async';

import 'package:flutter/material.dart';

import 'nav.dart';

class Pindahke2 extends StatefulWidget {
  const Pindahke2({Key? key}) : super(key: key);

  @override
  _Pindahke2State createState() => _Pindahke2State();
}

class _Pindahke2State extends State<Pindahke2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gas();
  }

  gas() async {
    var durasi = const Duration(seconds: 1);
    return Timer(durasi, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Nav2()));
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Nav2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.medical_services,
          color: Colors.pinkAccent,
          size: 75,
        ),
      ),
    );
  }
}

class Pindahke3 extends StatefulWidget {
  const Pindahke3({Key? key}) : super(key: key);

  @override
  _Pindahke3State createState() => _Pindahke3State();
}

class _Pindahke3State extends State<Pindahke3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gas();
  }

  gas() async {
    var durasi = const Duration(seconds: 1);
    return Timer(durasi, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Nav3()));
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Nav2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.local_police,
          color: Colors.blue,
          size: 75,
        ),
      ),
    );
  }
}

class Pindahke1 extends StatefulWidget {
  const Pindahke1({Key? key}) : super(key: key);

  @override
  _Pindahke1State createState() => _Pindahke1State();
}

class _Pindahke1State extends State<Pindahke1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gas();
  }

  gas() async {
    var durasi = const Duration(seconds: 1);
    return Timer(durasi, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Nav1()));
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Nav2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.fire_hydrant,
          color: Colors.red,
          size: 75,
        ),
      ),
    );
  }
}
