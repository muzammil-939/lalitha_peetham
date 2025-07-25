import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhotographyHeroImg1 extends StatelessWidget {
  const PhotographyHeroImg1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: EdgeInsets.only(bottom: 150, right: 150),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/photography_hero_1.png',
          ), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Every photograph holds a piece of \nyour love, captured in a moment that \nlasts foreve',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => context.go('/photography_services'),
                child: Container(
                  width: 160,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5C761), // Golden/amber color
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color(0xFF000000), // Dark brown text
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
