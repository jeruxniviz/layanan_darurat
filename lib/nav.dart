import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:layanan_darurat/blue.dart';
import 'package:layanan_darurat/red.dart';
import 'package:layanan_darurat/white.dart';

import 'pindah.dart';

class Nav1 extends StatefulWidget {
  const Nav1({Key? key}) : super(key: key);

  @override
  _Nav1State createState() => _Nav1State();
}

class _Nav1State extends State<Nav1> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Red(),
    Pindahke2(),
    Pindahke3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.red,
        buttonBackgroundColor: Colors.white,
        items: [
          Icon(
            FontAwesomeIcons.fireExtinguisher,
            size: 12,
            color: Colors.black,
          ),
          Icon(
            FontAwesomeIcons.briefcaseMedical,
            size: 12,
            color: Colors.black,
          ),
          Icon(
            Icons.local_police,
            size: 12,
            color: Colors.black,
          ),
        ],
        height: 50,
        onTap: _onItemTapped,
        index: _selectedIndex,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}

class Nav2 extends StatefulWidget {
  const Nav2({Key? key}) : super(key: key);

  @override
  _Nav2State createState() => _Nav2State();
}

class _Nav2State extends State<Nav2> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Pindahke1(),
    White(),
    Pindahke3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.pinkAccent,
        buttonBackgroundColor: Colors.white,
        items: [
          Icon(
            FontAwesomeIcons.fireExtinguisher,
            size: 12,
            color: Colors.black,
          ),
          Icon(
            FontAwesomeIcons.briefcaseMedical,
            size: 12,
            color: Colors.black,
          ),
          Icon(
            Icons.local_police,
            size: 12,
            color: Colors.black,
          ),
        ],
        height: 50,
        onTap: _onItemTapped,
        index: _selectedIndex,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}

class Nav3 extends StatefulWidget {
  const Nav3({Key? key}) : super(key: key);

  @override
  _Nav3State createState() => _Nav3State();
}

class _Nav3State extends State<Nav3> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Pindahke1(),
    Pindahke2(),
    Blue(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.white,
        items: [
          Icon(
            FontAwesomeIcons.fireExtinguisher,
            size: 12,
            color: Colors.black,
          ),
          Icon(
            FontAwesomeIcons.briefcaseMedical,
            size: 12,
            color: Colors.black,
          ),
          Icon(
            Icons.local_police,
            size: 12,
            color: Colors.black,
          ),
        ],
        height: 50,
        onTap: _onItemTapped,
        index: _selectedIndex,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}
