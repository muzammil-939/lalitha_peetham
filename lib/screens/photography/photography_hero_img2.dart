import 'package:flutter/material.dart';

class PhotographyHeroImg2 extends StatelessWidget {
  const PhotographyHeroImg2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: EdgeInsets.only(bottom: 150, left: 150),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/photography_hero_2.png',
          ), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fill the Form – Let’s Capture Your \nBeautiful Moments',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          SizedBox(height: 20),
          Container(
            width: 150,
            height: 45,
            decoration: BoxDecoration(
              color: Color(0xFFF5C761), // Golden/amber color
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                'Explore Plans',
                style: TextStyle(
                  color: Color(0xFF000000), // Dark brown text
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
