import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class WelcomeScreenHeader extends StatelessWidget {
  const WelcomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
      bool isMobile = ResponsiveHelper.isMobile(context);
  bool isTablet = ResponsiveHelper.isTablet(context);
  bool isDesktop = ResponsiveHelper.isDesktop(context);

  double headingFontSize = isMobile ? 18 : (isTablet ? 18 : 26);
  double subHeadingFontSize = isMobile ? 8 : (isTablet ? 9 : 14);

    return Container(
      color: const Color(0xFFD4BB26),
    padding: EdgeInsets.symmetric(
      horizontal: isMobile ? 8 : (isTablet ? 12 : 20),
      vertical: isMobile ? 6 : (isTablet ? 8 : 12),
    ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "WELCOME TO SREE LALITHA PEETHAM",
                style: TextStyle(
                  fontSize: headingFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1
                ),
              ),
              Text(
                "SPIRITUAL TRADITIONAL RICHVAL NEEDS MADE SIMPLE",
                style: TextStyle(fontSize: subHeadingFontSize, color: Colors.black,
                letterSpacing: 4.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}