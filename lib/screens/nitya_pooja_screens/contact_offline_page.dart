import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_layout.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ContactOfflinePage extends StatefulWidget {
  const ContactOfflinePage({super.key});

  @override
  State<ContactOfflinePage> createState() => _ContactOfflinePageState();
}

class _ContactOfflinePageState extends State<ContactOfflinePage> {

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
    return NityapoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
           //buildherosection(),
            buildConfirmSection(context) ,

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
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
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
                "Booking Confirmed track your\npooja",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context,
                    desktop: 45,
                    tablet: 30,
                    mobile: 20
                  ), 
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
              'assets/images/vastupooja16.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

Widget buildConfirmSection(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;
  final isTablet = screenWidth >= 600 && screenWidth < 1100;
  final isDesktop = screenWidth >= 1100;

  final horizontalPadding = isDesktop ? 150.0 : isTablet ? 60.0 : 16.0;
  final titleFontSize = isDesktop ? 32.0 : isTablet ? 26.0 : 22.0;
  final bulletFontSize = isMobile ? 14.0 : 16.0;
  final backgroundHeight = isMobile ? 300.0 : 500.0;
  final planetSize = isMobile ? 40.0 : 60.0;

  return Stack(
    children: [
      // 🌄 Background Image
      Positioned.fill(
        child: SizedBox(
          height: backgroundHeight,
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
          height: planetSize,
          width: planetSize,
        ),
      ),

      // 🧾 Main Content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Us for Offline Booking",
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            // 🟡 Yellow Container
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Offline Nithya Pooja Booking Process',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),

                  // 📞 Contact Info Row
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.phone, color: Colors.green),
                            const SizedBox(width: 10),
                            Text(
                              "Call / WhatsApp  :  +91-XXXXXXXXXX",
                              style: TextStyle(fontSize: bulletFontSize),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.email, color: Colors.red),
                            const SizedBox(width: 10),
                            Text(
                              "Email (Optional)  :  ",
                              style: TextStyle(fontSize: bulletFontSize),
                            ),
                            Expanded(
                              child: Text(
                                "bookings@yourpoojaservice.com",
                                style: TextStyle(
                                  fontSize: bulletFontSize,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.access_time, color: Colors.orange),
                            const SizedBox(width: 10),
                            Text(
                              "Service Hours  :  8:00 AM – 9:00 PM  |  All Days",
                              style: TextStyle(fontSize: bulletFontSize),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // 🧭 Booking Process
                  const Text(
                    "How Offline Booking Works:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "1. Call or Message Us with your nithya puja type, location, date,\n    and language preference.",
                    style: TextStyle(fontSize: bulletFontSize),
                  ),
                  Text(
                    "2. Our Team Confirms Availability and helps you choose the right\n    package.",
                    style: TextStyle(fontSize: bulletFontSize),
                  ),
                  Text(
                    "3. Pay Amount (Optional) to confirm your slot.",
                    style: TextStyle(fontSize: bulletFontSize),
                  ),
                  Text(
                    "4. Receive Booking Confirmation via WhatsApp/SMS.",
                    style: TextStyle(fontSize: bulletFontSize),
                  ),

                  const SizedBox(height: 30),

                  // 💬 Why Book Offline
                  const Text(
                    "Why Book Offline?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  buildBullet("Speak directly with our team", fontSize: bulletFontSize),
                  buildBullet("Personalized assistance", fontSize: bulletFontSize),
                  buildBullet("Easy for elders or non-digital users", fontSize: bulletFontSize),
                  buildBullet("Immediate confirmation & guidance", fontSize: bulletFontSize),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


// ✅ Bullet Point Builder
Widget buildBullet(String text, {double fontSize = 16}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• ", style: TextStyle(fontSize: 16)),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ],
    ),
  );
}



}