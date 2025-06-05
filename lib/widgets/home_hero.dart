import 'package:flutter/material.dart';

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
          Container(
            width: screenWidth,
            child: Image.asset(
              'assets/images/hero_image.png',
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.menu, color: Colors.white),
                            SizedBox(width: 30),
                            Text(
                              'Menu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
