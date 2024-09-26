import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Untuk ikon Instagram
import 'package:url_launcher/url_launcher.dart'; // Untuk membuka link

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001F3F), // Warna AppBar diubah
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Avatar bagian atas
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/profil.jpg"),
            ),
            SizedBox(height: 10.0),
            Text(
              "Muhammad Dava Al Farizy",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF001F3F), // Warna teks utama
              ),
            ),
            SizedBox(height: 20.0),
            // Kartu 'About'
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xFF001F3F), // Warna latar belakang kartu About
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white, // Warna teks About
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Saya adalah seorang junior front-end developer yang saat ini masih menempuh Sekolah Menengah Kejuruan di SMK Wikrama, dengan minat besar dalam desain UI dan pengembangan aplikasi web. Saya memiliki pemahaman yang cukup baik tentang HTML, CSS, JavaScript, serta framework seperti React dan Flutter.",
                      style: TextStyle(color: Colors.white), // Warna teks deskripsi
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // Kartu 'History'
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xFF3A6D8C), // Warna latar belakang kartu History
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "History",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white, // Warna teks History
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Saya mulai tertarik dengan pemrograman front-end saat mempelajari HTML dan CSS di sekolah. Sejak itu, saya mendalami pengembangan antarmuka pengguna dengan mempelajari JavaScript dan React. Saya telah mengerjakan beberapa proyek kecil yang membantu saya memahami dasar-dasar pengembangan web. Saat ini, saya terus belajar dan mencari pengalaman baru untuk mengasah kemampuan saya di bidang ini.",
                      style: TextStyle(color: Colors.white), // Warna teks deskripsi
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // Kartu 'Skill'
            SizedBox(
              width: MediaQuery.of(context).size.width * 1, // 100% dari lebar layar
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
  color: Color(0xFF001F3F), // Warna latar belakang kartu Skill
child: Padding(
  padding: EdgeInsets.all(16.0), // Perbaiki properti padding
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Skill",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white, // Pastikan warna teks diatur
        ),
      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("• HTML", style: TextStyle(color: Colors.white)),
                          Text("• CSS", style: TextStyle(color: Colors.white)),
                          Text("• JavaScript", style: TextStyle(color: Colors.white)),
                          Text("• React", style: TextStyle(color: Colors.white)),
                          Text("• Flutter", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      // Footer dengan ikon Instagram, GitHub, dan LinkedIn
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF001F3F), // Warna latar belakang BottomAppBar
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                onPressed: () {
                  _launchURL('https://instagram.com/andkaasep');
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.github, color: Colors.white),
                onPressed: () {
                  _launchURL('https://github.com/Elgzprtma');
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.white),
                onPressed: () {
                  _launchURL('https://www.linkedin.com/in/andikasuryael/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
