import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img2.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographyPackageConfirm extends StatelessWidget {
  const PhotographyPackageConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return PhotographyLayout(
      child: Column(
        children: [
          PhotographyHeroImg2(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFF6B8E4B)),
              padding: EdgeInsets.all(80),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100, bottom: 50),
                    child: Text(
                      "Thank you for reaching out to Sree Lalitha Peetham. Our team will assist\nyou shortly. Kindly wait for confirmation from your chosen photographer",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFB8B8B8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhotographyFaqWid(),
        ],
      ),
    );
  }
}
