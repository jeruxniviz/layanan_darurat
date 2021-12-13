import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layanan_darurat/darurat_lain.dart';
import 'package:layanan_darurat/webview.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawer.dart';

class Blue extends StatefulWidget {
  const Blue({Key? key}) : super(key: key);

  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  DateTime timeBackPressed = DateTime.now();
  final number = 110;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
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
                    Icons.local_police,
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
                  currentAccountPicture:
                      Image(image: AssetImage("images/polistopi.png")),
                  accountName: Text(
                    "   Kantor Polisi   ",
                    style: GoogleFonts.bowlbyOneSc(),
                  ),
                  accountEmail: Text(
                    "   Police Department   ",
                    style: GoogleFonts.bowlbyOneSc(),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title:
                      Text("Telepon Darurat Lain", style: GoogleFonts.basic()),
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
                                          image:
                                              AssetImage('images/kop_baru.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Polisi > 110",
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
                                                "     Hubungi 110",
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
                    color: Colors.indigo,
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
                    Text("tugas polisi adalah",
                        style: GoogleFonts.bebasNeue(
                            color: Colors.white, fontSize: 20)),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
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
                                image: AssetImage('images/polisjln.png'),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                              ),
                              Text(
                                  "Memberikan perlindungan,pengayoman \ndan pelayanan kepada masyarakat.",
                                  style: GoogleFonts.bebasNeue())
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('images/slidik.jpg'),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                              ),
                              Text(
                                  "Mencari dan menemukan suatu peristiwa \nYang dianggap sebagai tindak pidana",
                                  style: GoogleFonts.bebasNeue())
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('images/tkp.png'),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                              ),
                              Text("Membuat terang tindak pidana yang terjadi",
                                  style: GoogleFonts.bebasNeue())
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('images/polis.png'),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                              ),
                              Text("Menemukan tersangka pelaku tindak pidana.",
                                  style: GoogleFonts.bebasNeue())
                            ],
                          ),
                          Divider(),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Webblu()));
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
                    color: Colors.orange[700],
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
                              image: AssetImage('images/pol.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Lokasi kantor Polisi Terdekat",
                                style:
                                    GoogleFonts.bebasNeue(color: Colors.white),
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
          )),
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

const _url = 'https://www.google.co.id/maps/search/kantor+polisi+terdekat/';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

const _url2 = 'https://humas.polri.go.id/profil/tugas-fungsi/#';

void _launchURL2() async => await canLaunch(_url2)
    ? await launch(_url2)
    : throw 'Could not launch $_url2';
