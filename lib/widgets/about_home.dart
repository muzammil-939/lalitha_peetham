import 'package:flutter/material.dart';

class AboutHome extends StatelessWidget {
  const AboutHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 1200;
    final isTablet = size.width > 800 && size.width <= 1200;
    final isMobile = size.width <= 800;

    return SizedBox(
      width: size.width,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/what_we_do-b.png',
            width: size.width,

            fit: BoxFit.cover,
          ),
          if (isDesktop || isTablet)
            Positioned(
              left: 0,
              child: SizedBox(
                height: size.height * 1.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: isDesktop ? 125 : 60),
                      child: Image.asset('assets/images/what_we_do.png'),
                    ),
                  ],
                ),
              ),
            ),
          if (isMobile)
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: SizedBox(
                height: size.height * 0.4,
                child: Image.asset(
                  'assets/images/what_we_do.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          Positioned(
            right: isMobile ? 0 : 0,
            left: isMobile ? 0 : null,
            child: SizedBox(
              width:
                  isMobile
                      ? size.width
                      : (isTablet ? size.width * 0.5 : size.width * 0.4),
              height:
                  isMobile
                      ? size.height * 1.5
                      : (isTablet ? size.height * 2.1 : size.height * 2.3),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: isMobile ? 40 : (isTablet ? 60 : 80),
                  right: isMobile ? 20 : (isTablet ? 60 : 125),
                  left: isMobile ? 20 : 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ABOUT',
                      style: TextStyle(
                        fontSize: isMobile ? 24 : (isTablet ? 32 : 40),
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: isMobile ? 12 : 20),
                    Text(
                      'WHAT WE DO',
                      style: TextStyle(
                        fontSize: isMobile ? 32 : (isTablet ? 48 : 60),
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2D2D2D),
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: isMobile ? 16 : 24),
                    Text(
                      'Lalitha Peetham is your trusted destination for all spiritual, traditional, and cultural needs—offering a wide range of services like astrology, matrimony, pandit booking, online poojas, vastu consultations, gemstone sales, event management, and more. Rooted in devotion and inspired by the divine energy of Sri Lalitha Devi, our platform bridges faith and convenience by bringing authentic, verified services to your fingertips. Whether you\'re planning a function, seeking spiritual guidance, or performing daily rituals, Lalitha Peetham ensures a seamless and sacred experience for every devotee.',
                      style: TextStyle(
                        fontSize: isMobile ? 16 : (isTablet ? 20 : 26),
                        height: 1.6,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: isMobile ? 20 : 32),
                    ElevatedButton(
                      onPressed: () => print('Learn More button pressed'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE67E22),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 40 : (isTablet ? 50 : 60),
                          vertical: isMobile ? 20 : (isTablet ? 30 : 40),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        elevation: 2,
                      ),
                      child: const Text(
                        'LEARN MORE',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
