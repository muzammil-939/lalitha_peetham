import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/astrology_screens/simillar_astrologers.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/related_astrology.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class YourSecureAstrologersConnections extends StatefulWidget {
  const YourSecureAstrologersConnections({super.key});

  @override
  State<YourSecureAstrologersConnections> createState() => _YourSecureAstrologersConnectionsState();
}

class _YourSecureAstrologersConnectionsState extends State<YourSecureAstrologersConnections> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            
            AstrologerProfilePage(),
            SizedBox(height: 80),
            AstrologerContactSection(),
            SizedBox(height: 80),
            SimillarAstrologers(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildherosection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text("Menu", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              
              Text(
                "Chat Privately with Expert Astrologers\n— Secure & Confidential",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/vastupooja18.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

}



class AstrologerProfilePage extends StatelessWidget {
  const AstrologerProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
     
      // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 350,
          width: 1500,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 🪐 Planet Image
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),
        // Background Watermark
       // Background Watermark Vector Positioned Bottom-Right
Positioned(
  bottom: 60,
  right: 380,
  child: Opacity(
    opacity: 0.8,
    child: Image.asset(
      'assets/images/Vector (2).png',
      width: 500,
      height: 500,
      fit: BoxFit.contain,
      //color: Colors.amber[800],
    ),
  ),
),


        // Main Foreground Content
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              const Text(
                "Your Secure Astrology Connection",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 30),

              // Top Row: Profile + Info
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Image
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFE6B800),
                        width: 3,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/vastupooja7.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),

                  // Right side name + follow
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Name: Sreehari",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(Icons.bookmark_border,
                                size: 16, color: Colors.grey),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "15+ Years In Vastu & Energy Balancing",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                "Specialization:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const BulletPoint(text: "Residential Vastu Correction"),
              const BulletPoint(text: "Pre-Housewarming Energy Alignment"),
              const BulletPoint(text: "Personalized Remedies Based On Horoscope"),
              const SizedBox(height: 20),

              const DetailRow(label: "Languages:", value: "Hindi, English, Tamil"),
              const SizedBox(height: 12),
              const DetailRow(
                label: "Location:",
                value: "New Delhi, India (Offers Online Consultations)",
              ),
              const SizedBox(height: 12),
              const DetailRow(
                label: "Consultation Mode:",
                value: "In-Person / Phone / Video Call",
              ),
              const SizedBox(height: 12),
              const DetailRow(
                label: "Consultation Charges:",
                value: "₹999 For 30 Minutes (First Consultation Offer)",
              ),
              const SizedBox(height: 12),
              const DetailRow(
                label: "Availability:",
                value: "Mon–Sat, 10:00 AM – 6:00 PM IST",
              ),
              const SizedBox(height: 30),

              Center(
                child: SizedBox(
                  width: 160,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/schedule_a_session_with_astrologers');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDC9323),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6, right: 8),
            width: 4,
            height: 4,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const DetailRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}


