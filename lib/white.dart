import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'darurat_lain.dart';

class White extends StatefulWidget {
  const White({Key? key}) : super(key: key);

  @override
  _WhiteState createState() => _WhiteState();
}

class _WhiteState extends State<White> {
  DateTime timeBackPressed = DateTime.now();
  final number = 118;
  final number2 = 119;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
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
                  "   Rumah Sakit   ",
                  style: GoogleFonts.bowlbyOneSc(),
                ),
                accountEmail: Text(
                  "   Hospital   ",
                  style: GoogleFonts.bowlbyOneSc(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
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
              Divider()
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
                                        image: AssetImage('images/rs.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Ambulans > 118 atau 119",
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
                                              "     Panggil 118",
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
                                              "     Panggil 119",
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
