import 'package:flutter/material.dart';

class HomeDailyHoroscope extends StatelessWidget {
  const HomeDailyHoroscope({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.width > 600;
    final isMobile = size.width < 600;

    return SizedBox(
      width: size.width,
      child: Stack(
        children: [
          // Background image
          Padding(
            padding: EdgeInsets.only(
              top:
                  isMobile
                      ? size.height * 0.65
                      : (isTablet ? size.height * 0.6 : size.height * 0.55),
            ),
            child: Image.asset(
              'assets/images/daily_horo-b.png',
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),

          // Content section
          Positioned(
            top: size.height * 0.05,
            left: isMobile ? 16 : (isTablet ? size.width * 0.05 : 200),
            right: isMobile ? 16 : null,
            child: Container(
              width: isMobile ? null : (isTablet ? size.width * 0.6 : null),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Text(
                    'DAILY HOROSCOPE',
                    style: TextStyle(
                      fontSize: isMobile ? 18 : (isTablet ? 24 : 28),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),

                  // Main title
                  Text(
                    'CHOOSE YOUR ZODIAC SIGN',
                    style: TextStyle(
                      fontSize: isMobile ? 32 : (isTablet ? 48 : 60),
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D2D2D),
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),

                  // Description
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: isMobile ? 14 : (isTablet ? 16 : 24),
                        color: Colors.grey[700],
                        height: 1.6,
                      ),
                      children: const [
                        TextSpan(
                          text:
                              'Start your day with guidance from the stars.\n'
                              'Get personalized predictions for love, career,\n'
                              'health, and more—based on your zodiac sign.\n',
                        ),
                        TextSpan(text: '✨ ', style: TextStyle(fontSize: 18)),
                        TextSpan(
                          text:
                              'Check what the universe has in store for you\ntoday.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),

                  // CTA button
                  GestureDetector(
                    onTap: () => print('Navigate to today\'s horoscope'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFFD4A574),
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Read Today\'s Horoscope',
                            style: TextStyle(
                              fontSize: isMobile ? 20 : (isTablet ? 26 : 32),
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFD4A574),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFD4A574),
                            size: isMobile ? 16 : 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Zodiac grid - FIXED
          Positioned(
            bottom:
                isMobile
                    ? size.height * 0.25
                    : (isTablet ? size.height * 0.25 : size.height * 0.3),
            left: 16,
            right: 16,
            height:
                isMobile
                    ? size.height * 0.4
                    : (isTablet ? size.height * 0.35 : size.height * 0.25),
            child: Padding(
              padding: EdgeInsets.only(top: isMobile ? 80 : 0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobile ? 4 : 6,
                  crossAxisSpacing: isMobile ? 8.0 : 10.0,
                  mainAxisSpacing: isMobile ? 20.0 : (isTablet ? 25.0 : 30.0),
                  childAspectRatio: 1.0,
                ),
                itemCount: 6,
                itemBuilder:
                    (context, index) => Image.asset(
                      'assets/images/virgo.png',
                      fit: BoxFit.contain,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
