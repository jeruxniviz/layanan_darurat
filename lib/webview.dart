import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webred extends StatefulWidget {
  const Webred({Key? key}) : super(key: key);

  @override
  _WebredState createState() => _WebredState();
}

class _WebredState extends State<Webred> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: WebView(
        initialUrl: "http://damkar.bandaacehkota.go.id/tupoksi/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class Webblu extends StatefulWidget {
  const Webblu({Key? key}) : super(key: key);

  @override
  _WebbluState createState() => _WebbluState();
}

class _WebbluState extends State<Webblu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: WebView(
        initialUrl: "https://humas.polri.go.id/profil/tugas-fungsi/#",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class Webwit extends StatefulWidget {
  const Webwit({Key? key}) : super(key: key);

  @override
  _WebwitState createState() => _WebwitState();
}

class _WebwitState extends State<Webwit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: WebView(
        initialUrl:
            "https://www.jamsosindonesia.com/cetak/print_externallink/3427/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
