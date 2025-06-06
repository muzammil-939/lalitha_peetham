import 'package:flutter/material.dart';

class HomeDailyHoroscope extends StatelessWidget {
  const HomeDailyHoroscope({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      child: Stack(
        children: [
          // Background image
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Image.asset(
              'assets/images/daily_horo-b.png',
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50,
            left: 200,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header section
                  Text(
                    'DAILY HOROSCOPE',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Main title
                  const Text(
                    'CHOOSE YOUR ZODIAC SIGN',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D2D2D),
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Description text
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 24,
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
                              'Check what the universe has in store for you\n'
                              'today.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Call to action button
                  GestureDetector(
                    onTap: () {
                      // Handle navigation to horoscope reading
                      print('Navigate to today\'s horoscope');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFFD4A574), // Golden brown color
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
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFD4A574),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFD4A574),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Fixed GridView with proper constraints
          Positioned(
            bottom: 300,
            left: 16,
            right: 16,
            height: screenHeight, // Only constrain the GridView height
            child: GridView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // Disable scrolling since we have fixed items
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6, // 6 items per row
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 150.0,
                childAspectRatio: 1.0, // Square containers
              ),
              itemCount: 12, // 2 rows × 6 items = 12 total items
              itemBuilder: (context, index) {
                return Container(child: Image.asset('assets/images/virgo.png'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
