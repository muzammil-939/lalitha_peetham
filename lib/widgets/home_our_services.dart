import 'package:flutter/material.dart';

class HomeOurServices extends StatelessWidget {
  const HomeOurServices({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.width > 600 && size.width <= 1024;
    final isMobile = size.width <= 600;

    // Responsive padding
    double padding = isMobile ? 20.0 : (isTablet ? 50.0 : 100.0);

    // Responsive cross axis count
    int crossAxisCount = isMobile ? 1 : (isTablet ? 2 : 3);

    // Responsive spacing
    double crossAxisSpacing = isMobile ? 20 : 10;
    double mainAxisSpacing = isMobile ? 30 : 50;

    // Responsive aspect ratio
    double childAspectRatio = isMobile ? 0.65 : (isTablet ? 0.7 : 0.68);

    return Container(
      padding: EdgeInsets.all(padding),
      color: const Color(0xFFF5F5F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'OUR SERVICES',
              style: TextStyle(
                fontSize: isMobile ? 32 : (isTablet ? 48 : 60),
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A4A4A),
                letterSpacing: 2.0,
              ),
            ),
          ),
          SizedBox(height: isMobile ? 20 : 40),

          // Services Grid
          LayoutBuilder(
            builder: (context, constraints) {
              return GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: crossAxisSpacing,
                mainAxisSpacing: mainAxisSpacing,
                childAspectRatio: childAspectRatio,
                children: [
                  _buildServiceCard(context, Icons.stars_outlined, 'Astrology'),
                  _buildServiceCard(
                    context,
                    Icons.favorite_outline,
                    'Matrimony',
                  ),
                  _buildServiceCard(
                    context,
                    Icons.business_outlined,
                    'Property Sell & Rent',
                  ),
                  _buildServiceCard(
                    context,
                    Icons.diamond_outlined,
                    'E - STORE',
                  ),
                  _buildServiceCard(
                    context,
                    Icons.restaurant_outlined,
                    'Catering',
                  ),
                  _buildServiceCard(
                    context,
                    Icons.account_balance_outlined,
                    'Function Hall Booking',
                  ),
                ],
              );
            },
          ),

          SizedBox(height: isMobile ? 15 : 30),

          // Navigation Dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _Dot(isActive: true),
              SizedBox(width: 8),
              _Dot(isActive: false),
              SizedBox(width: 8),
              _Dot(isActive: false),
              SizedBox(width: 8),
              _Dot(isActive: false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(BuildContext context, IconData icon, String title) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.width > 600 && size.width <= 1024;
    final isMobile = size.width <= 600;

    return LayoutBuilder(
      builder: (context, constraints) {
        // Use available width from GridView
        double availableWidth = constraints.maxWidth;
        double availableHeight = constraints.maxHeight;

        // Calculate card dimensions based on available space
        double cardWidth = availableWidth * 0.9;
        double cardHeight = availableHeight * 0.65; // Leave space for button

        // Responsive icon size
        double iconSize = isMobile ? 40 : (isTablet ? 50 : 60);

        // Responsive font size
        double fontSize = isMobile ? 14 : (isTablet ? 18 : 24);

        // Responsive button dimensions
        double buttonWidth = availableWidth * 0.8;
        double buttonHeight = isMobile ? 35 : (isTablet ? 40 : 50);

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Golden container with icon and title
            Container(
              width: cardWidth,
              height: cardHeight,
              decoration: BoxDecoration(
                color: const Color(0xffC0B020),
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
                  Icon(icon, size: iconSize, color: Colors.white, weight: 1.5),
                  SizedBox(height: isMobile ? 8 : 15),

                  // Title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2C2C2C),
                        letterSpacing: 1,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: isMobile ? 8 : 12),

            // View More Button
            SizedBox(
              width: buttonWidth,
              height: buttonHeight,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFB8941F), width: 1.5),
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'VIEW MORE',
                  style: TextStyle(
                    fontSize: isMobile ? 10 : (isTablet ? 12 : 14),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2C2C2C),
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Dot extends StatelessWidget {
  final bool isActive;
  const _Dot({required this.isActive});

  @override
  Widget build(BuildContext context) {
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
