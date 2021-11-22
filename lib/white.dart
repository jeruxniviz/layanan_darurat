import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class White extends StatefulWidget {
  const White({Key? key}) : super(key: key);

  @override
  _WhiteState createState() => _WhiteState();
}

class _WhiteState extends State<White> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "RUMAH SAKIT",
          style: GoogleFonts.bangers(color: Colors.pinkAccent),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.starOfLife,
                color: Colors.pinkAccent,
              ))
        ],
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.pinkAccent,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Rumah Sakit",
                style: GoogleFonts.bowlbyOneSc(),
              ),
              accountEmail: Text(
                "Hospital",
                style: GoogleFonts.bowlbyOneSc(),
              ),
              decoration: BoxDecoration(color: Colors.pinkAccent),
            ),
            ListTile(
              title: Text("data", style: GoogleFonts.basic()),
              leading: Icon(Icons.document_scanner),
              onTap: () {},
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
