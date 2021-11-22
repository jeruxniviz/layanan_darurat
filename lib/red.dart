import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Red extends StatefulWidget {
  const Red({Key? key}) : super(key: key);

  @override
  _RedState createState() => _RedState();
}

class _RedState extends State<Red> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "KANTOR PEMADAM KEBAKARAN",
          style: GoogleFonts.bangers(color: Colors.red),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.gripfire,
                color: Colors.red,
              ))
        ],
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.red,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Kantor Pemadam Kebakaran",
                style: GoogleFonts.bowlbyOneSc(),
              ),
              accountEmail: Text(
                "Fire department",
                style: GoogleFonts.bowlbyOneSc(),
              ),
              decoration: BoxDecoration(color: Colors.red),
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
