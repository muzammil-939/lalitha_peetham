import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class NityapoojaConfirmPage extends StatefulWidget {
  const NityapoojaConfirmPage({super.key});

  @override
  State<NityapoojaConfirmPage> createState() => _NityapoojaConfirmPageState();
}

class _NityapoojaConfirmPageState extends State<NityapoojaConfirmPage> {
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
      // Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
          height: backgroundImageHeight,
        ),
      ),

      // Top-right Planet Image
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: planetSize,
          width: planetSize,
        ),
      ),

      // Main Content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Subscription confirmed",
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  // Watermark image in background
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

                  // Foreground content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("✅ Booking Confirmation", style: TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Text("🎉 Your Nithya Pooja is Successfully Booked!", style: TextStyle(fontSize: bulletFontSize)),
                          Text(
                            "Thank you for subscribing to our Nithya Pooja service. Here's what you will receive:",
                            style: TextStyle(fontSize: bulletFontSize),
                          ),
                        ],
                      ),
                      SizedBox(height: spacing),

                      // Start Date & Time
                      const Text("Pooja Start Date & Time", style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),
                      buildBullet("Your daily pooja will begin from:\nStart Date: DD-MM-YYYY", fontSize: bulletFontSize),
                      buildBullet("Time: Usually performed during morning hours (6 AM – 10 AM or based on temple schedule)", fontSize: bulletFontSize),
                      buildBullet("You'll be notified daily once the pooja is completed.", fontSize: bulletFontSize),

                      SizedBox(height: spacing),

                      // Package Details
                      const Text("Subscription Package Details", style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),
                      buildBullet("Selected Plan: e.g., Monthly Premium Plan", fontSize: bulletFontSize),
                      buildBullet("Duration: e.g., 30 Days", fontSize: bulletFontSize),
                      buildBullet("Includes: Sankalpam, daily pooja, prasadam delivery, live link (as per plan)", fontSize: bulletFontSize),

                      SizedBox(height: spacing),

                      // Duration & Frequency
                      const Text("Daily Pooja Duration & Frequency", style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),
                      buildBullet("Frequency: Daily (Nithya Pooja – 7 days a week)", fontSize: bulletFontSize),
                      buildBullet("Duration: Each pooja lasts around 15–30 minutes, including sankalpam, archana, and offerings", fontSize: bulletFontSize),
                      buildBullet("Your name and details will be included in each daily pooja", fontSize: bulletFontSize),

                      SizedBox(height: spacing),

                      // Next Step
                      const Text("Next Step", style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),
                      buildBullet("A Confirmation Message Has Been Sent To Your Email And WhatsApp With All Puja Details", fontSize: bulletFontSize),

                      SizedBox(height: spacing * 2),

                      // Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Download action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCDCDCD),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                            ),
                            child: const Text("Download Details", style: TextStyle(color: Colors.black)),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              context.go('/poojas_page');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                            ),
                            child: const Text("Home", style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}


// Bullet Point Builder
Widget buildBullet(String text, {double fontSize = 16}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• ", style: TextStyle(fontSize: 16)),
        Expanded(child: Text(text, style: TextStyle(fontSize: fontSize))),
      ],
    ),
  );
}


}