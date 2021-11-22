import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blue extends StatefulWidget {
  const Blue({Key? key}) : super(key: key);

  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "KANTOR POLISI",
          style: GoogleFonts.bangers(color: Colors.blue),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star,
                color: Colors.blue,
              ))
        ],
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Polisi",
                style: GoogleFonts.bowlbyOneSc(),
              ),
              accountEmail: Text(
                "Police Department",
                style: GoogleFonts.bowlbyOneSc(),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text(
                "data",
                style: GoogleFonts.basic(),
              ),
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
