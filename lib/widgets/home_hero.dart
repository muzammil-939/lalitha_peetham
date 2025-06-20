import 'package:flutter/material.dart';
import 'menu.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key});

  void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLargeScreen = size.width > 1200;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;
    final screenHeight = size.height;

    // Responsive dimensions with height-based adjustments
    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

    double getSubtitleFontSize() {
      if (isVerySmallScreen) return 12;
      if (isSmallScreen) return 14;
      return 16;
    }

    double getSubtitleLetterSpacing() {
      if (isVerySmallScreen) return 2;
      if (isSmallScreen) return 3;
      if (isMediumScreen) return 4;
      return 6;
    }

    double getMainTitleFontSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 30;
      if (isMediumScreen) return 37;
      if (isLargeScreen) return 53;
      return 45;
    }

    double getMainTitleLetterSpacing() {
      if (isVerySmallScreen) return 2;
      if (isSmallScreen) return 4;
      if (isMediumScreen) return 6;
      return 8;
    }

    double getMainTitleLineHeight() {
      if (isVerySmallScreen) return 1.2;
      if (isSmallScreen) return 1.3;
      if (isMediumScreen) return 1.4;
      return 1.5;
    }

    double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    }

    // More conservative height-responsive spacing
    double getSpacing1() {
      if (screenHeight < 600) return 20;
      if (isVerySmallScreen) return 30;
      if (isSmallScreen) return 40;
      if (isMediumScreen) return 60;
      return 80;
    }

    double getSpacing2() {
      if (screenHeight < 600) return 10;
      if (isVerySmallScreen) return 15;
      if (isSmallScreen) return 20;
      return 25;
    }

    double getSpacing3() {
      if (screenHeight < 600) return 15;
      if (isVerySmallScreen) return 20;
      if (isSmallScreen) return 30;
      return 40;
    }

    EdgeInsets getButtonPadding() {
      if (isVerySmallScreen)
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      if (isSmallScreen)
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
      return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
    }

    double getButtonFontSize() {
      if (isVerySmallScreen) return 11;
      if (isSmallScreen) return 12;
      return 13;
    }

    double getButtonLetterSpacing() {
      if (isVerySmallScreen) return 0.3;
      return 0.5;
    }

    return SizedBox(
      width: size.width,
      height: size.height * 1.1, // Fixed height to prevent overflow
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/hero_image.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),

          // Menu button positioned at top
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Content overlay - centered content without menu
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Subtitle
                Text(
                  'SPIRITUAL + SERVICE FOCUSED',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getSubtitleFontSize(),
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: getSubtitleLetterSpacing(),
                  ),
                ),

                SizedBox(height: getSpacing2()),

                // Main title with flexible container
                Container(
                  width: size.width * (isVerySmallScreen ? 0.95 : 0.9),
                  padding: EdgeInsets.symmetric(
                    horizontal: isVerySmallScreen ? 8 : 16,
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                    child: Text(
                      'ALL YOUR TRADITIONAL\n& SPIRITUAL NEEDS\nONE CLICK AWAY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getMainTitleFontSize(),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        height: getMainTitleLineHeight(),
                        letterSpacing: getMainTitleLetterSpacing(),
                        shadows: [
                          Shadow(
                            offset: Offset(
                              isVerySmallScreen ? 1 : 2,
                              isVerySmallScreen ? 1 : 2,
                            ),
                            blurRadius: isVerySmallScreen ? 2 : 4,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: getSpacing3()),

                // Button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: getButtonPadding(),
                    decoration: BoxDecoration(
                      color: const Color(0x33D4BB26),
                      borderRadius: BorderRadius.circular(
                        isVerySmallScreen ? 8 : 10,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: isVerySmallScreen ? 1 : 1.5,
                      ),
                    ),
                    child: Text(
                      'DISCOVER MORE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getButtonFontSize(),
                        fontWeight: FontWeight.w500,
                        letterSpacing: getButtonLetterSpacing(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
