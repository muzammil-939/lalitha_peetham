import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class NityapoojaRenewalCmpltPage extends StatefulWidget {
  const NityapoojaRenewalCmpltPage({super.key});

  @override
  State<NityapoojaRenewalCmpltPage> createState() => _NityapoojaRenewalCmpltPageState();
}

class _NityapoojaRenewalCmpltPageState extends State<NityapoojaRenewalCmpltPage> {

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
            children: [
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
  final titleFontSize = isDesktop ? 28.0 : isTablet ? 24.0 : 20.0;
  final bulletFontSize = isMobile ? 14.0 : 16.0;
  final backgroundImageHeight = isMobile ? 350.0 : 500.0;
  final planetSize = isMobile ? 40.0 : 60.0;
  final watermarkSize = isMobile ? 300.0 : 550.0;
  final spacing = isMobile ? 20.0 : 40.0;

  return Stack(
    children: [
      // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 500,
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
         height: planetSize,
          width: planetSize,
        ),
      ),

      // 📄 Main Content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "✅📄 Renewal Completed – Nithya Pooja",
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
              child: Stack(
                children: [
                  // Watermark Astrological Circle
                  Center(
                    child: Opacity(
                      opacity: 0.1,
                      child: SizedBox(
                       height: watermarkSize,
                        width: watermarkSize,
                        child: Image.asset(
                          'assets/images/vector (2).png',
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  // 📑 Main Text Content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "✅ Booking Confirmation",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text("🎉 Your Nithya Pooja is Successfully Booked!"),
                      Text(
                          "Thank you for subscribing to our Nithya Pooja service. Here's what you will receive:",
                          style: TextStyle(fontSize: bulletFontSize), ),
                     
                       SizedBox(height: spacing),

                      // 📿 Pooja Details
                      const Text("Pooja Details",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      buildBullet("Pooja Type: Lakshmi Nithya Pooja",),
                      buildBullet("Temple/Deity: Sree Lalitha Peetham"),
                      buildBullet("Renewal Duration: 30 Days"),
                      buildBullet("New Start Date: 21 June 2025"),
                      buildBullet("End Date: 20 July 2025"),

                      const SizedBox(height: 30),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),

                      // 💳 Payment Details
                      const Text("Payment Details",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      buildBullet("Amount Paid: ₹999"),
                      buildBullet("Transaction ID: TXN8493021"),
                      buildBullet("Payment Mode: UPI"),
                      buildBullet("Payment Status: ✅ Success"),
                      buildBullet("Date & Time: 18 June 2025, 5:10 PM"),

                      const SizedBox(height: 30),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),

                      // 🛕 Final Message
                      const Text(
                          "🙏 Thank you for renewing your Nithya Pooja.\nYour daily pooja will continue without interruption.\nYou will receive daily updates via SMS/WhatsApp.\n📞 For any help, contact our support team: +91-XXXXXXXXXX"),

                      const SizedBox(height: 50),

                      // 🧾 Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // TODO: Add download logic
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCDCDCD),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 12),
                            ),
                            child: const Text(
                              "Download Details",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              // TODO: Navigate to home
                              context.go('/poojas_page');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 12),
                            ),
                            child: const Text(
                              "Home",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
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
Widget buildBullet(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• ", style: TextStyle(fontSize: 16)),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
      ],
    ),
  );
}


}