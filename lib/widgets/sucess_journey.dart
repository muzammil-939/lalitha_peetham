import 'package:flutter/material.dart';

// Refined SuccessJourneyWidget
class SuccessJourneyWidget extends StatelessWidget {
  const SuccessJourneyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Responsive padding
    double horizontalPadding;
    if (screenWidth > 1200) {
      horizontalPadding = 100;
    } else if (screenWidth > 800) {
      horizontalPadding = 60;
    } else if (screenWidth > 600) {
      horizontalPadding = 40;
    } else {
      horizontalPadding = 20;
    }

    // Responsive title font size
    double titleFontSize;
    if (screenWidth > 1200) {
      titleFontSize = 40;
    } else if (screenWidth > 800) {
      titleFontSize = 32;
    } else if (screenWidth > 600) {
      titleFontSize = 28;
    } else {
      titleFontSize = 24;
    }

    // Responsive subtitle font size
    double subtitleFontSize;
    if (screenWidth > 1200) {
      subtitleFontSize = 60;
    } else if (screenWidth > 800) {
      subtitleFontSize = 48;
    } else if (screenWidth > 600) {
      subtitleFontSize = 36;
    } else {
      subtitleFontSize = 28;
    }

    // Responsive subtitle padding
    double subtitlePadding;
    if (screenWidth > 1200) {
      subtitlePadding = 300;
    } else if (screenWidth > 800) {
      subtitlePadding = 100;
    } else if (screenWidth > 600) {
      subtitlePadding = 50;
    } else {
      subtitlePadding = 20;
    }

    // Responsive cross axis count
    int crossAxisCount;
    if (screenWidth > 900) {
      crossAxisCount = 3;
    } else if (screenWidth > 600) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: 100,
      ),
      color: const Color(0xFFF5F5F5),
      child: Column(
        children: [
          // Title Section
          Column(
            children: [
              Text(
                'JOURNEY OF FAITH AND FULFILLMENT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: subtitlePadding),
                child: Text(
                  'share your success journey with # sree lalitha peetham',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D2D2D),
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),

          // Services Grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 4,
            mainAxisSpacing: 6,
            childAspectRatio: 0.68,
            children: [
              _buildServiceCard('assets/images/marriage_card.png', () {}),
              _buildServiceCard('assets/images/astrology_card.png', () {}),
              _buildServiceCard(
                'assets/images/flower_decoration_card.png',
                () {},
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildServiceCard(String imgpath, VoidCallback onPressed) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(imgpath, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 250,
          height: 60,
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xFFB8941F), width: 1.5),
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Text(
              'READ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C2C2C),
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
