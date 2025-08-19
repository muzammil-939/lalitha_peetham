import 'package:flutter/material.dart';

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

    // Card width
    double cardWidth = screenWidth > 900
        ? (screenWidth - (horizontalPadding * 2) - 40) / 3
        : screenWidth > 600
            ? (screenWidth - (horizontalPadding * 2) - 20) / 2
            : screenWidth - (horizontalPadding * 2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Top heading
        Text(
          "Success Stories".toUpperCase(),
          style: const TextStyle(
            fontSize: 15,
            letterSpacing: 3,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 10),
    
        // Subheading
        Text(
          "SHARE YOUR SUCCESS JOURNEY WITH # SREE LALITHA PEETHAM",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: screenWidth > 800 ? 25 : 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 10),
    
        // Small caption
        const Text(
          "verified journeys",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 40),
    
        // Cards Row
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: [
            _buildCard(
              imgPath: "assets/images/marriage_card.png",
              title: "Marriage",
              width: cardWidth,
            ),
            _buildCard(
              imgPath: "assets/images/astrology_card.png",
              title: "Astrology",
              width: cardWidth,
            ),
            _buildCard(
              imgPath: "assets/images/flower_decoration_card.png",
              title: "Flower Decoration",
              width: cardWidth,
              showArrow: true,
            ),
          ],
        ),
    
        const SizedBox(height: 40),
    
        // Page indicator dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _dot(Colors.amber),
            _dot(Colors.grey[400]!),
            _dot(Colors.grey[800]!),
          ],
        ),
      ],
    );
  }

  Widget _buildCard({
    required String imgPath,
    required String title,
    required double width,
    bool showArrow = false,
  }) {
    return Column(
      children: [
        Container(
          width: width,
          height: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(blurRadius: 4, color: Colors.black54),
                  ],
                ),
              ),
              if (showArrow)
                const Icon(Icons.arrow_forward, color: Colors.white, size: 18),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // Read button
        SizedBox(
          width: 100,
          height: 40,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xFFB8941F), width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Text(
              'Read',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _dot(Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
