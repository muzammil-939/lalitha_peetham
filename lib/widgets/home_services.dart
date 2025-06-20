import 'package:flutter/material.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});

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
      padding: EdgeInsets.only(
        left: horizontalPadding,
        right: horizontalPadding,
        top: 100,
      ),
      color: const Color(0xFFF5F5F5),
      child: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 4,
            mainAxisSpacing: 6,
            childAspectRatio: 0.68,
            children: [
              buildServiceCard('assets/images/marriage_card.png', () {}),
              buildServiceCard('assets/images/astrology_card.png', () {}),
              buildServiceCard(
                'assets/images/flower_decoration_card.png',
                () {},
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildDot(true),
              const SizedBox(width: 8),
              buildDot(false),
              const SizedBox(width: 8),
              buildDot(false),
              const SizedBox(width: 8),
              buildDot(false),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildServiceCard(String imgpath, VoidCallback onPressed) {
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

  Widget buildDot(bool isActive) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color(0xFFD4AF37) : const Color(0xFFBBBBBB),
      ),
    );
  }
}
