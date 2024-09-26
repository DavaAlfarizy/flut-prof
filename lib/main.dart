import 'package:flutter/material.dart';
import 'package:profil_diri/Page2.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ));

class home extends StatelessWidget {
  const home({super.key});
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
        )),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color(0xFF001F3F), // Mengubah warna latar belakang card
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage("assets/images/profil.jpg"),
                    ),
                    Text(
                      "Muhammad Dava Al Farizy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Mengubah warna teks menjadi putih
                      ),
                    ),
                    Text(
                      "Murid Sekolah Menengah Kejuruan di SMK Wikrama Bogor",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3A6D8C), // Mengubah warna teks deskripsi
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
                        foregroundColor: Colors.white, // Warna teks tombol
                        backgroundColor: Color(0xFF3A6D8C), // Warna latar tombol
                      ),
                      child: Text("See More"),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
