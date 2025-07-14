import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class YogaOnlineClassessSections extends StatefulWidget {
  const YogaOnlineClassessSections({super.key});

  @override
  State<YogaOnlineClassessSections> createState() =>
      _YogaOnlineClassessSectionsState();
}

class _YogaOnlineClassessSectionsState
    extends State<YogaOnlineClassessSections> {
  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Column(
        children: [
          // Hero Section with Search
          _buildHeroSection(),
        ],
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 800,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/yoga_image1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
