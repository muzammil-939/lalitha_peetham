import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/astrology_screens/simillar_astrologers.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/related_astrology.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class YourSecureAstrologersConnections extends StatefulWidget {
  const YourSecureAstrologersConnections({super.key});

  @override
  State<YourSecureAstrologersConnections> createState() => _YourSecureAstrologersConnectionsState();
}

class _YourSecureAstrologersConnectionsState extends State<YourSecureAstrologersConnections> {

  void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }

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
      final size = MediaQuery.of(context).size;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;
    

    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

        double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    }
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: isMobile ? 300 : isTablet ? 400 : 600,
          fit: BoxFit.cover,
        ),
        // Menu button positioned at top
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ),
        Positioned(
          top: isMobile ? 80 : 120,
          child: Column(
            children: [
              
              Text(
                "Chat Privately with Expert Astrologers\n— Secure & Confidential",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context, mobile: 20, tablet: 30, desktop: 45),
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
              height: isMobile ? 100 : isTablet ? 120: 180,
              width: isMobile ? 150 : isTablet ? 180 : 280,
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
    
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final screenWidth = ResponsiveHelper.screenWidth(context);

    return Stack(
      children: [
     
       // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
         height: isMobile ? 200 : isTablet ? 300 : 350,
          width:  screenWidth,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 🪐 Planet Image
       Positioned(
  top: isMobile ? 20 : 40,
  right: isMobile ? 10 : 30,
  child: Image.asset(
    'assets/images/vastupooja11.png',
    height: isMobile ? 40 : 60,
    width: isMobile ? 40 : 60,
  ),
),
        
       // Background Watermark (Vector Image)
        Positioned(
          bottom: isMobile ? 60 : isTablet ? 60:  60,
          right: isMobile ?150 : isTablet ? 250: 380,
          child: Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.8,
              child: Image.asset(
                'assets/images/Vector (2).png',
                width: isMobile ? 250 : isTablet ? 300 : 450,
                height: isMobile ? 250 : isTablet ? 300 : 450,
                fit: BoxFit.contain,
                //color: Colors.amber[800],
              ),
            ),
          ),
        ),


        // Main Foreground Content
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: isMobile ?20 : 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "Your Secure Astrology Connection",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: ResponsiveFontsize.fontSize(
                    context, mobile: 20,  tablet: 28, desktop: 35),
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 30),

              // Top Row: Profile + Info
      

Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // 📸 Profile Image (Responsive)
    Container(
      width: isMobile ? 90 : isTablet ? 110 : 130,
      height: isMobile ? 90 : isTablet ? 110 : 130,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFFE6B800),
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

    // 🧱 Spacer
    SizedBox(width: isMobile ? 16 : isTablet ? 24 : 30),

    // 🧑‍🔬 Name, Follow Button, Experience
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // 🔤 Name
              Text(
                "Name: Sreehari",
                style: TextStyle(
                  fontSize: ResponsiveFontsize.fontSize(
                    context,
                    mobile: 18,
                    tablet: 22,
                    desktop: 24,
                  ),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: isMobile ? 6 : 8),

              // ✅ Follow Button
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Follow",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ResponsiveFontsize.fontSize(
                      context,
                      mobile: 12,
                      tablet: 13,
                      desktop: 14,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(width: isMobile ? 4 : 5),

              // 📌 Bookmark Icon
              Icon(
                Icons.bookmark_border,
                size: isMobile ? 14 : 16,
                color: Colors.grey,
              ),
            ],
          ),

          SizedBox(height: isMobile ? 4 : 6),

          // 📜 Experience
          Text(
            "15+ Years In Vastu & Energy Balancing",
            style: TextStyle(
              fontSize: ResponsiveFontsize.fontSize(
                context,
                mobile: 14,
                tablet: 15,
                desktop: 16,
              ),
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
              style: TextStyle(
  fontSize: ResponsiveFontsize.fontSize(context, mobile: 14, tablet: 16, desktop: 18),
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
          style: TextStyle(
  fontSize: ResponsiveFontsize.fontSize(context, mobile: 16, tablet: 18, desktop: 20),
  fontWeight: FontWeight.w600,
  color: Colors.black,
),

        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
  fontSize: ResponsiveFontsize.fontSize(context, mobile: 14, tablet: 16, desktop: 18),
  color: Colors.grey[700],
),

        ),
      ],
    );
  }
}


