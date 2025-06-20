import 'package:flutter/material.dart';

class HomeFeaturedServ extends StatelessWidget {
  const HomeFeaturedServ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.width >= 768 && size.width < 1024;
    final isMobile = size.width < 768;

    return Container(
      padding: EdgeInsets.all(
        isMobile
            ? 20.0
            : isTablet
            ? 60.0
            : 100.0,
      ),
      color: const Color(0xFFF5F5F5),
      child: Column(
        children: [
          // Header Section
          Text(
            'FEATURED SERVICES',
            style: TextStyle(
              fontSize:
                  isMobile
                      ? 24
                      : isTablet
                      ? 32
                      : 40,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: isMobile ? 10 : 20),
          Text(
            'Traditional & Elegant:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize:
                  isMobile
                      ? 32
                      : isTablet
                      ? 48
                      : 60,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2D2D2D),
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: isMobile ? 16 : 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 20),
            child: Text(
              "Lalitha Peetham brings you all-in-one spiritual and traditional services — from astrology, poojas, matrimony, and vastu to event management and wellness. Experience trusted guidance, authentic rituals, and seamless service for every sacred occasion.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:
                    isMobile
                        ? 16
                        : isTablet
                        ? 24
                        : 30,
                height: 1.6,
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height:
                isMobile
                    ? 40
                    : isTablet
                    ? 80
                    : 125,
          ),

          // Services Grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount:
                isMobile
                    ? 1
                    : isTablet
                    ? 2
                    : 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: isMobile ? 30 : 50,
            childAspectRatio:
                isMobile
                    ? 0.9
                    : isTablet
                    ? 0.6
                    : 0.5,
            children: [
              _buildServiceCard(context, Icons.stars_outlined, 'Astrology'),
              _buildServiceCard(context, Icons.favorite_outline, 'Matrimony'),
              _buildServiceCard(
                context,
                Icons.business_outlined,
                'Property Sell & Rent',
              ),
            ],
          ),

          SizedBox(height: isMobile ? 20 : 30),

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
    final isTablet = size.width >= 768 && size.width < 1024;
    final isMobile = size.width < 768;

    double cardWidth;
    double cardHeight;

    if (isMobile) {
      cardWidth = size.width * 0.8;
      cardHeight = 300;
    } else if (isTablet) {
      cardWidth = size.width * 0.4;
      cardHeight = 400;
    } else {
      cardWidth = size.width * 0.27;
      cardHeight = 500;
    }

    return Column(
      children: [
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
              Icon(
                icon,
                size:
                    isMobile
                        ? 50
                        : isTablet
                        ? 65
                        : 80,
                color: Colors.white,
                weight: 1.5,
              ),
              SizedBox(height: isMobile ? 15 : 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize:
                        isMobile
                            ? 20
                            : isTablet
                            ? 25
                            : 30,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2C2C2C),
                    letterSpacing: 2,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: isMobile ? 20 : 30),
        SizedBox(
          width: isMobile ? 200 : 250,
          height: isMobile ? 50 : 60,
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
              'VISIT',
              style: TextStyle(
                fontSize: isMobile ? 12 : 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF2C2C2C),
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ],
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
