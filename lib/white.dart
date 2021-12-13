import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layanan_darurat/webview.dart';
import 'package:url_launcher/url_launcher.dart';

import 'darurat_lain.dart';
import 'drawer.dart';

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
                currentAccountPicture:
                    Image(image: AssetImage("images/medtopi.png")),
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
              Divider(),
              // ListTile(
              //   title: Text("Bantuan", style: GoogleFonts.basic()),
              //   leading: Icon(Icons.help),
              //   onTap: () {
              //     Navigator.push(
              //         context, MaterialPageRoute(builder: (context) => Help()));
              //   },
              // ),
              // Divider(),
              ListTile(
                title: Text("Syarat & Ketentuan", style: GoogleFonts.basic()),
                leading: Icon(Icons.document_scanner),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Sk()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Tentang", style: GoogleFonts.basic()),
                leading: Icon(Icons.info),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Keluar", style: GoogleFonts.basic()),
                leading: Icon(Icons.outbox),
                onTap: () {
                  SystemNavigator.pop();
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
                                              "     Hubungi 118",
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
                                              "     Hubungi 119",
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
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.pink[700],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      spreadRadius: 1,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text(
                    "tugas paramedis adalah",
                    style: GoogleFonts.bebasNeue(
                        color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(color: Colors.white),
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
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(
                              image: AssetImage('images/eva.png'),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text("pelayanan pra-rumah sakit",
                                style: GoogleFonts.bebasNeue())
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(
                              image: AssetImage('images/ambu.png'),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text(" evakuasi medis, dan lokasi kejadian.",
                                style: GoogleFonts.bebasNeue())
                          ],
                        ),
                        Divider(),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Webwit()));
                            },
                            child: Text(
                              "selengkapnya",
                              style: GoogleFonts.bangers(),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red[700],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
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
                            image: AssetImage('images/rskit.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Lokasi Rumah Sakit Terdekat",
                              style: GoogleFonts.bebasNeue(color: Colors.white),
                            ),
                          ],
                        ),
                        Divider(),
                        ElevatedButton(
                            onPressed: () async {
                              _launchURL();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.map),
                                Text(
                                  "lihat lokasi",
                                  style: GoogleFonts.bangers(),
                                ),
                              ],
                            )),
                      ],
                    ),
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(10),
                  )
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

const _url = 'https://www.google.co.id/maps/search/rumah+sakit+terdekat/';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

const _url2 = 'https://humas.polri.go.id/profil/tugas-fungsi/#';

void _launchURL2() async => await canLaunch(_url2)
    ? await launch(_url2)
    : throw 'Could not launch $_url2';
