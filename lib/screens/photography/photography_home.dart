import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img1.dart';
import 'package:lalitha_peetham/screens/photography/photography_home_sub.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographyHome extends StatelessWidget {
  const PhotographyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return PhotographyLayout(
      child: Column(
        children: [
          PhotographyHeroImg1(),
          Container(
            padding: EdgeInsets.all(150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 450,
                  width: 600,
                  child: Image.asset(
                    'assets/images/photography_aboutus.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 400,
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "With over ten years of experience, we specialize in capturing genuine moments and emotions across all types of events. Our approach blends artistry with authenticity to create timeless images you’ll cherish forever.We tell your unique story naturally, whether it’s a corporate event, celebration, or personal milestone, while ensuring a seamless and enjoyable experience from start to finish.No matter the occasion, we bring creativity, professionalism, and passion to preserve your memories with care and elegance",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF6B8E4B)),
            padding: EdgeInsets.all(80),
            child: Column(
              children: [
                Text(
                  "Portfolio",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 50),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Take a look at some of our cherished captures below, and explore the\nstories that make each event truly special.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      letterSpacing: 1.25,
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.5, color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      "view portfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          WeddingPhotographyUI(),
          _build(),
          PhotographyFaqWid(),
        ],
      ),
    );
  }

  Widget _build() {
    return Container(
      width: double.infinity,
      height: 450,
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 200),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side content
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Testimonial title at top
                Text(
                  'testimonial',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                // Bottom section with image, arrows, and name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image container
                    Container(
                      width: 260,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/wedding.png',
                          ), // Replace with your image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Navigation arrows and client name section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Client names
                        Text(
                          'Emily & Rahul',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 40),
                        // Navigation arrows
                        Row(
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.chevron_left,
                                color: Colors.black54,
                                size: 18,
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.black54,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(width: 40),

          // Right side - Green testimonial container (full height)
          Expanded(
            flex: 6,
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Color(0xFF5D7441),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The photographer made our special day unforgettable through incredible talent and a warm personality.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Every meaningful moment was captured with care and creativity, making us feel completely comfortable throughout. The photos are breathtaking and truly tell the story of our wedding. We couldn\'t be happier and highly recommend this service to anyone seeking a passionate and professional photographe',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
