import 'package:flutter/material.dart';

class AboutHome extends StatelessWidget {
  const AboutHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,

      child: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/what_we_do-b.png',
            width: screenWidth,
            fit: BoxFit.cover,
          ),

          // Top menu bar
          Positioned(
            left: 0,
            child: SizedBox(
              height: screenHeight * 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 125),
                    child: Image.asset('assets/images/what_we_do.png'),
                  ),
                ],
              ),
            ),
          ),
          // Main content - centered
          Positioned(
            right: 0,

            child: SizedBox(
              width: screenWidth * 0.4,
              height: screenHeight * 2.3,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 80, right: 125),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header text
                        Text(
                          'ABOUT',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                            letterSpacing: 1.2,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Main title
                        const Text(
                          'WHAT WE DO',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D2D2D),
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Description text
                        Text(
                          'Lalitha Peetham is your trusted destination for all spiritual, traditional, and cultural needs—offering a wide range of services like astrology, matrimony, pandit booking, online poojas, vastu consultations, gemstone sales, event management, and more. Rooted in devotion and inspired by the divine energy of Sri Lalitha Devi, our platform bridges faith and convenience by bringing authentic, verified services to your fingertips. Whether you\'re planning a function, seeking spiritual guidance, or performing daily rituals, Lalitha Peetham ensures a seamless and sacred experience for every devotee.',
                          style: TextStyle(
                            fontSize: 30,
                            height: 1.6,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Learn More button
                        ElevatedButton(
                          onPressed: () {
                            // Add your navigation logic here
                            print('Learn More button pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(
                              0xFFE67E22,
                            ), // Orange color
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 60,
                              vertical: 40,
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
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 100,
            child: Container(
              height: screenHeight * 0.3,
              child: Image.asset('assets/images/moons.png', fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
