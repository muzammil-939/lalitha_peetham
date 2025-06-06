import 'package:flutter/material.dart';

class HomeOurServices extends StatelessWidget {
  const HomeOurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 100.0),
      color: const Color(0xFFF5F5F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Align(
            alignment: Alignment.centerLeft,
            child: const Text(
              'OUR SERVICES',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A4A4A),
                letterSpacing: 2.0,
              ),
            ),
          ),
          const SizedBox(height: 40),

          // Services Grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 50,
            childAspectRatio: 0.68,
            children: [
              _buildServiceCard(
                icon: Icons.stars_outlined,
                title: 'Astrology',
                onPressed: () {},
                context: context,
              ),
              _buildServiceCard(
                icon: Icons.favorite_outline,
                title: 'Matrimony',
                onPressed: () {},
                context: context,
              ),
              _buildServiceCard(
                icon: Icons.business_outlined,
                title: 'Property Sell & Rent',
                onPressed: () {},
                context: context,
              ),
              _buildServiceCard(
                icon: Icons.diamond_outlined,
                title: 'Gemstone Selling',
                onPressed: () {},
                context: context,
              ),
              _buildServiceCard(
                icon: Icons.restaurant_outlined,
                title: 'Catering',
                onPressed: () {},
                context: context,
              ),
              _buildServiceCard(
                icon: Icons.account_balance_outlined,
                title: 'Function Hall Booking',
                onPressed: () {},
                context: context,
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
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        // Golden container with icon and title
        Container(
          width: screenWidth * 0.27,
          height: screenHeight * 0.75,
          decoration: BoxDecoration(
            color: Color(0xffC0B020),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Icon(icon, size: 80, color: Colors.white, weight: 1.5),

              const SizedBox(height: 25),

              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2C2C2C),
                    letterSpacing: 2,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
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
              'VIEW MORE',
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
