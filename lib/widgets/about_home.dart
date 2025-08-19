import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class AboutHome extends StatelessWidget {
  const AboutHome({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);
    bool isDesktop = ResponsiveHelper.isDesktop(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: 20,
      ),
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Left Text Section
          Expanded(
            flex: isMobile ? 0 : 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A B O U T",
                  style: TextStyle(
                    fontSize: isMobile ? 12 : 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 3,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: isMobile ? 8 : 12),
                Text(
                  "WHAT WE DO",
                  style: TextStyle(
                    fontSize: isMobile
                        ? 20
                        : isTablet
                            ? 26
                            : 32,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: isMobile ? 12 : 16),
                Text(
                  "Lalitha Peetham is your trusted destination for all spiritual, traditional, "
                  "and cultural needs — offering a wide range of services like astrology, "
                  "matrimony, pandit booking, online poojas, vastu consultations, gemstone sales, "
                  "event management, and more. Rooted in devotion and inspired by the divine energy "
                  "of Sri Lalitha Devi, our platform bridges faith and convenience by bringing authentic, "
                  "verified services to your fingertips. Whether you're planning a function, seeking spiritual "
                  "guidance, or performing daily rituals, Lalitha Peetham ensures a seamless and sacred experience "
                  "for every devotee.",
                  style: TextStyle(
                    fontSize: isMobile ? 14 : 16,
                    height: 1.6,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: isMobile ? 20 : 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD4C65A), // yellow shade
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 24 : 28,
                      vertical: isMobile ? 14 : 16,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(
                    "LEARN MORE",
                    style: TextStyle(
                      fontSize: isMobile ? 12 : 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),

          if (!isMobile) SizedBox(width: 40),

          // Right Image Section
          Expanded(
            flex: isMobile ? 0 : 1,
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Top background block
                  Positioned(
                    top: -50,
                    right: -25,
                    child: Container(
                      width: isMobile ? 120 : 160,
                      height: isMobile ? 120 : 160,
                      color: const Color(0xFFDAD3A0), // light cream
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 16,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ),
                  // Bottom background block
                  Positioned(
                    bottom: -50,
                    left: -25,
                    child: Container(
                      width: isMobile ? 120 : 160,
                      height: isMobile ? 120 : 160,
                      color: const Color(0xFFDAD3A0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 16,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ),
                  // Main image
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Image.asset(
                      "assets/images/guruvu.jpg", // replace with your image
                      width: isMobile ? 220 : 300,
                      fit: BoxFit.cover,
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
