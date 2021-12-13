import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DaruratLain extends StatefulWidget {
  const DaruratLain({Key? key}) : super(key: key);

  @override
  _DaruratLainState createState() => _DaruratLainState();
}

class _DaruratLainState extends State<DaruratLain> {
  final number = 115;
  final number2 = 129;
  final number3 = 123;
  final number4 = 112;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          "Telepon Darurat Lain",
          style: GoogleFonts.bangers(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          //kesatu
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
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
                                      image: AssetImage('images/sar.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Badan Nasional Pencarian dan Pertolongan > 115",
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
                                            "     Hubungi 115",
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
                SizedBox(
                  height: 20,
                ),
                //kedua
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
                                      image: AssetImage('images/posko.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Posko bencana alam > 129",
                                        style: GoogleFonts.bebasNeue(
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Divider(),
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
                                            "     Hubungi 129",
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
                SizedBox(
                  height: 20,
                ),
                // ketiga
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
                                      image: AssetImage('images/pln.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Perusahaan Listrik Negara (PLN) > 123",
                                        style: GoogleFonts.bebasNeue(
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  ElevatedButton(
                                      onPressed: () async {
                                        launch('tel://$number3');
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.phone),
                                          Text(
                                            "     Hubungi 123",
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
                SizedBox(
                  height: 20,
                ),
                //keempat
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
                                      image: AssetImage('images/layanan.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Nomor darurat telpon seluler dan satelit > 112",
                                        style: GoogleFonts.bebasNeue(
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  ElevatedButton(
                                      onPressed: () async {
                                        launch('tel://$number4');
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.phone),
                                          Text(
                                            "     Hubungi 112",
                                            style: GoogleFonts.basic(),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(10),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
