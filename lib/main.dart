import 'package:flutter/material.dart';
import 'login_page.dart'; // Mengimpor halaman login
import 'Page2.dart'; // Pastikan Page2.dart ada di proyek Anda

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Mengarahkan ke halaman login terlebih dahulu
    );
  }
}

// Penamaan kelas 'Home' dengan huruf kapital sesuai konvensi Flutter
class Home extends StatelessWidget {
  final String nama;
  final String sekolah;
  final String deskripsi;
  final String role;

  const Home({
    Key? key,
    required this.nama,
    required this.sekolah,
    required this.deskripsi,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFF001F3F),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("assets/images/profil.jpg"),
                      ),
                      Text(
                        nama,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        sekolah,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF3A6D8C),
                        ),
                      ),
                      Text(
                        deskripsi,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " $role",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF3A6D8C),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF3A6D8C),
                        ),
                        child: Text("See More"),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
