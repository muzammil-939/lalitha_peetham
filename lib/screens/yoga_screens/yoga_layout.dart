import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_header.dart';
import 'package:lalitha_peetham/widgets/footer.dart';

class YogaLayout extends StatelessWidget {
  final Widget child;

  const YogaLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const YogaHeader(), child, FooterWidget()]),
    );
  }
}
