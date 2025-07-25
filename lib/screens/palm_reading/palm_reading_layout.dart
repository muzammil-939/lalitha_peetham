import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_header.dart';
import '../../widgets/footer.dart';

class PalmReadingLayout extends StatelessWidget {
  final Widget child;

  const PalmReadingLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [const PalmReadingHeader(), child, FooterWidget()],
      ),
    );
  }
}
