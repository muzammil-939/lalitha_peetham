import 'package:flutter/material.dart';
import 'menu.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key});

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
            'assets/images/hero_image.png',
            width: screenWidth,
            fit: BoxFit.cover,
          ),

          // Main content - centered
          Positioned.fill(
            child: Center(
              child: SizedBox(
                height: screenHeight * 1.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Updated GestureDetector section in your HomeHero widget
                    GestureDetector(
                      onTap: () {
                        // Option 1: Using Navigator (Full screen overlay)
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    DropdownGridMenu(),
                            transitionDuration: Duration(milliseconds: 300),
                            transitionsBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                              child,
                            ) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            opaque:
                                false, // This makes the background semi-transparent
                          ),
                        );

                        // Option 2: Using Overlay (Recommended for dropdown effect)
                        // OverlayDropdownMenu.show(context);
                      },
                      child: Container(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.menu, color: Colors.white, size: 30),
                            SizedBox(width: 12),
                            Text(
                              'MENU',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 200),
                    // Subtitle
                    Text(
                      'SPIRITUAL + SERVICE FOCUSED',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 6,
                      ),
                    ),
                    SizedBox(height: 50),

                    // Main heading
                    Container(
                      width: screenWidth * 0.8,
                      child: Text(
                        'ALL YOUR TRADITIONAL\n& SPIRITUAL NEEDS\nONE CLICK AWAY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: screenWidth > 600 ? 53 : 37,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          height: 1.75,
                          letterSpacing: 8,
                          shadows: [
                            Shadow(
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    GestureDetector(
                      onTap: () => (),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0x33D4BB26),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: Text(
                          'DISCOVER MORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
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
