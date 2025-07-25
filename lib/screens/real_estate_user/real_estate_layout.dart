import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/real_estate_user/real_estate_header.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_header.dart';
import 'package:lalitha_peetham/widgets/footer.dart';

class RealEstateLayout extends StatelessWidget {
  final Widget child;

  const RealEstateLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const RealEstateHeader(), child, FooterWidget()]),
    );
  }
}
