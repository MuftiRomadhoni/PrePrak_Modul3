import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/desc_controller.dart';

class DescriptionPageView extends GetView<DescController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Description Page',
          style: GoogleFonts.arsenal(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF1B262C),
      ),
      body: Container(
        color: Color(0xFF1B262C), // Set the background color to light blue (or choose your desired color)
        child: ListView(
          children: <Widget>[
            // 1
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: [
                        Image.asset(
                          controller.imageAssets[1], // Menggunakan controller untuk akses imageAssets
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Mechanical keyboard full size adalah jenis keyboard mekanikal dengan semua tombol standar. Dikenal kuat dan tahan lama, cocok untuk pemain game dan profesional. Dilengkapi pencahayaan, pengaturan makro, dan tombol multimedia. Ideal untuk produktivitas tinggi dan pengalaman mengetik nyaman.',
                            style: GoogleFonts.arsenal(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 2
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: [
                    Image.asset(
                    controller.imageAssets[0], // Menggunakan controller untuk akses imageAssets
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Mechanical keyboard 75% adalah versi kompak dari keyboard mekanikal standar. Didesain tanpa keypad numerik dan tombol navigasi, sehingga lebih ringkas. Cocok untuk pengguna yang menginginkan keyboard portable dengan pengalaman mengetik responsif. Tetap memberikan umpan balik taktile dan akustik yang menyenangkan.',
                      style: GoogleFonts.arsenal(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // 3
      Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: Column(
                children: [
                  Image.asset(
                    controller.imageAssets[2], // Menggunakan controller untuk akses imageAssets
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Mechanical keyboard 60% adalah keyboard ultra-kompak yang hanya memiliki tombol-tombol utama. Ideal untuk mobilitas tinggi dan pengalaman mengetik yang minimalis. Tetap memberikan sensasi taktile dan akustik yang unik bagi pengguna yang mencari keyboard sederhana dan ringkas.',
                      style: GoogleFonts.arsenal(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ],
    ),
    ),
    );
  }
}
