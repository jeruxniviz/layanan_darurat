import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'darurat_lain.dart';

class Red extends StatefulWidget {
  const Red({Key? key}) : super(key: key);

  @override
  _RedState createState() => _RedState();
}

class _RedState extends State<Red> {
  DateTime timeBackPressed = DateTime.now();

  final number = 113;
  final number2 = 1131;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
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
                  "   Kantor Pemadam Kebakaran   ",
                  style: GoogleFonts.bowlbyOneSc(),
                ),
                accountEmail: Text(
                  "   Fire department   ",
                  style: GoogleFonts.bowlbyOneSc(),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: Text("Telepon Darurat Lain", style: GoogleFonts.basic()),
                leading: Icon(Icons.phone),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DaruratLain()));
                },
              ),
              Divider(),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage('images/380.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Damkar > 113 atau 1131",
                                          style: GoogleFonts.bebasNeue(
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    ElevatedButton(
                                        onPressed: () async {
                                          launch('tel://$number');
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone),
                                            Text(
                                              "     Panggil 113",
                                              style: GoogleFonts.basic(),
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    ElevatedButton(
                                        onPressed: () async {
                                          launch('tel://$number2');
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone),
                                            Text(
                                              "     Panggil 1131",
                                              style: GoogleFonts.basic(),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(10),
                              )
                            ],
                          ),
                        )
                      ])),
                ],
              ),
            )
          ],
        ),
      ),
      onWillPop: () async {
        final difference = DateTime.now().difference(timeBackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timeBackPressed = DateTime.now();

        if (isExitWarning) {
          final massage = 'tekan dua kali untuk keluar';
          Fluttertoast.showToast(msg: massage, fontSize: 16);

          return false;
        } else {
          Fluttertoast.cancel();
          return true;
        }
      },
    );
  }
}
// https://www.google.co.id/maps/search/kantor+pemadam+kebakaran+terdekat/