import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
          "Bantuan",
          style: GoogleFonts.bangers(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
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
            "Tentang",
            style: GoogleFonts.bangers(color: Colors.black),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              // nama logo copyright
              Container(
                child: Column(
                  children: [
                    //nama
                    Text(
                      "LayananDarurat 0.1.0",
                      style:
                          GoogleFonts.basic(fontSize: 24, color: Colors.white),
                    ),
                    //copyright
                    Text("@ 2021 Jeruxniviz, <jeruxniviz@gmail.com>",
                        style: GoogleFonts.basic(
                            fontSize: 16, color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Deskripsi",
                      style:
                          GoogleFonts.basic(fontSize: 16, color: Colors.white),
                    ),
                    Divider(),
                    Text(
                      "LayananDarurat adalah aplikasi yang dibuat untuk membantu mempermudah pengguna yang membutuhkan pelayanan darurat.",
                      style:
                          GoogleFonts.basic(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("LayananDarurat Mempermudah anda untuk : ",
                        style: GoogleFonts.basic(
                            fontSize: 14, color: Colors.white)),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  "> Menghubungi layanan darurat yang dibutuhkan",
                                  style: GoogleFonts.basic(
                                      fontSize: 14, color: Colors.white)),
                            ],
                          ),
                          Text(
                              "> Mencari informasi dasar tentang layanan Pemadam Kebakaran, Rumah Sakit, Dan polisi",
                              style: GoogleFonts.basic(
                                  fontSize: 14, color: Colors.white)),
                          Text(
                              "> Mencari lokasi kantor pemadam kebakaran, rumah sakit dan kantor polisi terdekat",
                              style: GoogleFonts.basic(
                                  fontSize: 14, color: Colors.white)),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Sk extends StatefulWidget {
  const Sk({Key? key}) : super(key: key);

  @override
  _SkState createState() => _SkState();
}

class _SkState extends State<Sk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
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
            "Syarat & Ketentuan",
            style: GoogleFonts.bangers(color: Colors.black),
          ),
        ),
        body: Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Text(
                "Persyaratan Layanan",
                style: GoogleFonts.basic(fontSize: 24, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white,
              ),
              Text(
                "A. Anda secara tegas memahami dan menyetujui bahwa penggunaan Anda atas aplikasi adalah atas kebijakan dan risiko Anda sendiri dan bahwa aplikasi tersebut disediakan apa adanya dan tersedia tanpa jaminan dalam bentuk apa pun. ",
                style: GoogleFonts.basic(fontSize: 16, color: Colors.white),
              ),
              Divider(),
              Text(
                "B. Anda bertanggung jawab penuh atas segala kerusakan pada perangkat seluler Anda, atau perangkat lain, atau kehilangan data yang diakibatkan oleh penggunaan tersebut. ",
                style: GoogleFonts.basic(fontSize: 16, color: Colors.white),
              ),
              Divider(),
              Text(
                "C. Penulis secara tegas menyangkal semua jaminan dan kondisi apapun, baik tersurat maupun tersirat, termasuk, namun tidak terbatas pada jaminan tersirat dan kondisi kesesuaian untuk tujuan tertentu.",
                style: GoogleFonts.basic(fontSize: 16, color: Colors.white),
              ),
              Divider(),
              Text(
                "A. You expressly understand and agree that your use of the application is at your sole discretion and risk and that the application is provided as is and as available without warranty of any kind. ",
                style: GoogleFonts.basic(fontSize: 16, color: Colors.white),
              ),
              Divider(),
              Text(
                "B. You are solely responsible for any damage to your mobile device, or other device, or loss of data that results from such use. ",
                style: GoogleFonts.basic(fontSize: 16, color: Colors.white),
              ),
              Divider(),
              Text(
                "C. The authtor further expressly disclaims all warranties and conditions of any kind, whether express or implied, including, but not limited to the implied warranties and conditions of fitness for a particular purpose.",
                style: GoogleFonts.basic(fontSize: 16, color: Colors.white),
              ),
              Divider(),
            ],
          ),
        ));
  }
}
