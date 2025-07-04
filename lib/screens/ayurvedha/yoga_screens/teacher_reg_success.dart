import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class YogaTeacherRegSuccess extends StatefulWidget {
  const YogaTeacherRegSuccess({super.key});

  @override
  _YogaTeacherRegSuccessState createState() => _YogaTeacherRegSuccessState();
}

class _YogaTeacherRegSuccessState extends State<YogaTeacherRegSuccess> {
  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_buildBreadcrumb(), _buildSuccessButton(context)],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 16, color: Colors.black),
              Text(
                ' // Register As A Yoga Teacher',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuccessButton(context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Checkmark circle icon
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFF4CAF50), // Green color
                width: 3,
              ),
              color: Colors.transparent,
            ),
            child: Icon(Icons.check, color: Color(0xFF4CAF50), size: 40),
          ),

          SizedBox(height: 80), // Space between icon and button
          // Success button
          Container(
            width: 420,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFF34AD42), // Green background
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                'SUCCESSFULLY REGISTERED',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
