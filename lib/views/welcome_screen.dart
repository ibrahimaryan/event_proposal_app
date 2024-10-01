import 'package:event_proposal_app/views/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Bagian atas gambar dengan gradasi
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  flex: 7, // Mengatur proporsi tinggi bagian gambar
                  child: Stack(
                    children: [
                      // Gambar di bagian atas
                      Positioned.fill(
                        child: Image.asset(
                          'assets/welcome.jpg', // Ganti dengan path gambar Anda
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Gradasi transparan
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.white.withOpacity(0.6),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Bagian bawah: teks keterangan dan tombol
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Keterangan aplikasi
                        Text(
                          "Welcome to Polivent",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1886EA),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          "Polivent is an event app designed specifically to make it easier for you to explore and join exciting events around Polines. ",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40.0),
                        // Tombol Get Started
                        ElevatedButton(
                          onPressed: () {
                            // Aksi ketika tombol ditekan
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    LoginScreen(), // Ganti ke screen berikutnya
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80.0, vertical: 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              backgroundColor: Color(0xff1886EA)),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
