import 'package:flutter/material.dart';

import '../../widgets/footer.dart';
import 'ayurvedh_header.dart';

class AyurvedhPageLayout extends StatelessWidget {
  final Widget child;

  const AyurvedhPageLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const AyurvedhHeader(), child, FooterWidget()]),
    );
  }
}
