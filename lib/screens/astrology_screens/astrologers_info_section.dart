import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/astrology_screens/simillar_astrologers.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/related_astrology.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class AstrologersInfoSection extends StatefulWidget {
  const AstrologersInfoSection({super.key});

  @override
  State<AstrologersInfoSection> createState() => _AstrologersInfoSectionState();
}

class _AstrologersInfoSectionState extends State<AstrologersInfoSection> {

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
          top: 120,
          child: Column(
            children:  [
              
              Text(
                "Book a Session with Our Vastu Pooja\nSpecialist",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobile ? 18 : isTablet ? 28 : 45,
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
              height: isMobile ? 100 : isTablet ? 120 : 180,
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
    final size = MediaQuery.of(context).size;
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // Responsive measurements (tweak these multipliers as needed)
    final horizontalPadding = isDesktop
        ? 200.0
        : isTablet
            ? 100.0
            : 16.0;
    final bgHeight = size.height * (isMobile ? 0.28 : isTablet ? 0.32 : 0.60);
    final planetSize = isMobile ? 40.0 : isTablet ? 50.0 : 60.0;
    final watermarkSize = isMobile ? 200.0 : isTablet ? 300.0 : 500.0;
    final profileImgSize = isMobile ? 80.0 : isTablet ? 110.0 : 130.0;
    final titleFontSize = isMobile ? 20.0 : isTablet ? 26.0 : 32.0;
    final nameFontSize = isMobile ? 18.0 : isTablet ? 22.0 : 24.0;
    final subtitleFontSize = isMobile ? 12.0 : 14.0 ; 16.0;
    final detailLabelSize = isMobile ? 16.0 : isTablet ? 18.0 : 20.0;
    final detailValueSize = isMobile ? 13.0 : isTablet ? 15.0 : 16.0;
    final buttonWidth = isMobile ? 140.0 : 160.0;
    final buttonHeight = 45.0;

    return Stack(
      children: [
        // Background image spans screen width and uses responsive height
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: size.width,
            height: bgHeight,
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Planet Image (top-right)
        Positioned(
          top: bgHeight * 0.12,
          right: isMobile ? 12 : 30,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: planetSize,
            width: planetSize,
            fit: BoxFit.contain,
          ),
        ),

        // Watermark - bottom-right (offsets scaled by width)
        Positioned(
         // bottom: isMobile ? 60 : 60,
          bottom: isMobile ? 200 : isTablet ? 60:  100,
          right: isMobile ?150 : isTablet ? 250: 380,
          //right: isDesktop ? size.width * 0.25 : isTablet ? size.width * 0.18 : size.width * 0.08,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/Vector (2).png',
              width: watermarkSize,
              height: watermarkSize,
              fit: BoxFit.contain,
            ),
          ),
        ),

        // Main Foreground Content
        SingleChildScrollView(
          // ensures content is scrollable on small screens
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: bgHeight * 0.5), // push down below background
                Text(
                  "CONNECT WITH VERIFIED VASTU\nASTROLOGERS TODAY",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    height: 1.25,
                  ),
                ),
                SizedBox(height: isMobile ? 18 : 30),

                // Top Row: Profile + Info
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Image
                    Container(
                      width: profileImgSize,
                      height: profileImgSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFE6B800),
                          width: profileImgSize * 0.03,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/vastupooja7.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: isMobile ? 12 : 30),

                    // Right side name + follow
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Name: Sreehari",
                                  style: TextStyle(
                                    fontSize: nameFontSize,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
                              SizedBox(width: isMobile ? 6 : 12),
                              const Icon(Icons.bookmark_border, size: 16, color: Colors.grey),
                            ],
                          ),
                          SizedBox(height: 6),
                          Text(
                            "15+ Years In Vastu & Energy Balancing",
                            style: TextStyle(
                              fontSize: subtitleFontSize,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: isMobile ? 16 : 24),

                Text(
                  "Specialization:",
                  style: TextStyle(
                    fontSize: detailLabelSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                BulletPoint(
                  text: "Residential Vastu Correction",
                  fontSize: detailValueSize,
                ),
                BulletPoint(
                  text: "Pre-Housewarming Energy Alignment",
                  fontSize: detailValueSize,
                ),
                BulletPoint(
                  text: "Personalized Remedies Based On Horoscope",
                  fontSize: detailValueSize,
                ),
                SizedBox(height: 20),

                DetailRow(
                  label: "Languages:",
                  value: "Hindi, English, Tamil",
                  labelSize: detailLabelSize,
                  valueSize: detailValueSize,
                ),
                SizedBox(height: 12),
                DetailRow(
                  label: "Location:",
                  value: "New Delhi, India (Offers Online Consultations)",
                  labelSize: detailLabelSize,
                  valueSize: detailValueSize,
                ),
                SizedBox(height: 12),
                DetailRow(
                  label: "Consultation Mode:",
                  value: "In-Person / Phone / Video Call",
                  labelSize: detailLabelSize,
                  valueSize: detailValueSize,
                ),
                SizedBox(height: 12),
                DetailRow(
                  label: "Consultation Charges:",
                  value: "₹999 For 30 Minutes (First Consultation Offer)",
                  labelSize: detailLabelSize,
                  valueSize: detailValueSize,
                ),
                SizedBox(height: 12),
                DetailRow(
                  label: "Availability:",
                  value: "Mon–Sat, 10:00 AM – 6:00 PM IST",
                  labelSize: detailLabelSize,
                  valueSize: detailValueSize,
                ),
                SizedBox(height: isMobile ? 20 : 30),

                Center(
                  child: SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/astrologers_payment_method');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDC9323),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          fontSize: isMobile ? 14 : 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: isMobile ? 40 : 80),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Updated BulletPoint and DetailRow to accept fontSize
class BulletPoint extends StatelessWidget {
  final String text;
  final double? fontSize;

  const BulletPoint({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    final fs = fontSize ?? 16.0;
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
                fontSize: fs,
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
  final double? labelSize;
  final double? valueSize;

  const DetailRow({
    super.key,
    required this.label,
    required this.value,
    this.labelSize,
    this.valueSize,
  });

  @override
  Widget build(BuildContext context) {
    final ls = labelSize ?? 20.0;
    final vs = valueSize ?? 16.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: ls,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontSize: vs,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
