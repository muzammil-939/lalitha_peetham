import 'package:flutter/material.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 100.0, right: 100.0, top: 300),
      color: const Color(0xFFF5F5F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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

          // Navigation Dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildDot(isActive: true),
              const SizedBox(width: 8),
              _buildDot(isActive: false),
              const SizedBox(width: 8),
              _buildDot(isActive: false),
              const SizedBox(width: 8),
              _buildDot(isActive: false),
            ],
          ),
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

  Widget _buildDot({required bool isActive}) {
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
