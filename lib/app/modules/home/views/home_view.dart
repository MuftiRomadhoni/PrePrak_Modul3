import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001524),
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/aku.png'),
                  radius: 16, // Sesuaikan dengan ukuran gambar profil Anda
                ),
                SizedBox(width: 10),
                Text(
                  'Hi, Dhoni',
                  style: GoogleFonts.arsenal(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              'HONEY-RA',
              style: GoogleFonts.arsenal(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF222831),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 390,
              height: 600,
              decoration: BoxDecoration(
                color: Color(0xFF393E46),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(
                      'Choose your mechanical below',
                      style: GoogleFonts.arsenal(
                        fontSize: 28,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.DESC);
                      },
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                        ),
                        items: controller.imageAssets.map((imageAsset) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                elevation: 4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    imageAsset,
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 280),
                ],
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 20,
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              child: Text(
                'Accessories :',
                style: GoogleFonts.arsenal(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                width: 60,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFC436),
                ),
                child: IconButton(
                  onPressed: () {
                    Get.toNamed(Routes.CHAT);
                  },
                  icon: Icon(Icons.chat_rounded, color: Colors.black),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFF222831),
                ),
                child: TextButton.icon(
                  onPressed: () {
                    //action
                  },
                  label: Text(
                    'Enter Shop',
                    style: GoogleFonts.arsenal(color: Colors.white),
                  ),
                  icon: Icon(Icons.shopping_bag, color: Color(0xFFFFC436)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 33,
            child: SizedBox(
              height: 150,
              width: 350,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.cardTexts.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // navigateToDescriptionPage(index);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            controller.cardItems[index].imageAsset,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.cardTexts[index],
                                style: GoogleFonts.arsenal(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'View All',
                                style: GoogleFonts.arsenal(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            left: 90.0, // Koordinat X (horizontal)
            bottom: 20.0, // Koordinat Y (vertikal)
            child: Container(
              width: 60,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFFC436),
              ),
              child: IconButton(
                onPressed: () {
                  Get.toNamed(Routes.JSON); // Pindah ke JSON View
                },
                icon: Icon(Icons.account_tree_sharp, color: Colors.black),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
