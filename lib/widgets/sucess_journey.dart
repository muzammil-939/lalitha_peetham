import 'package:flutter/material.dart';

class SuccessJourneyWidget extends StatelessWidget {
  const SuccessJourneyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 100.0),
      color: const Color(0xFFF5F5F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header text
              Text(
                'JOURNEY  OF FAITH AND FULFILLMENT',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 20),

              // Main title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300),
                child: const Text(
                  textAlign: TextAlign.center,
                  'share your success journey with # sree lalitha peetham',
                  style: TextStyle(
                    fontSize: 60,
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
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 6.0,
            childAspectRatio: 0.68,
            children: [
              _buildServiceCard(
                icon: Icons.stars_outlined,
                title: 'Astrology',
                onPressed: () {},
                context: context,
                imgpath: 'assets/images/marriage_card.png',
              ),
              _buildServiceCard(
                icon: Icons.favorite_outline,
                title: 'Matrimony',
                onPressed: () {},
                context: context,
                imgpath: 'assets/images/astrology_card.png',
              ),
              _buildServiceCard(
                icon: Icons.business_outlined,
                title: 'Property Sell & Rent',
                onPressed: () {},
                context: context,
                imgpath: 'assets/images/flower_decoration_card.png',
              ),
            ],
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onPressed,
    required String imgpath,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        // Golden container with icon and title
        Container(
          height: screenHeight * 0.75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Image.asset(imgpath, fit: BoxFit.cover),
        ),

        const SizedBox(height: 30),

        // View More Button OUTSIDE the container
        Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
