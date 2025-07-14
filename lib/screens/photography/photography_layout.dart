import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/photography/photography_header.dart';
import '../../../widgets/footer.dart';

class PhotographyLayout extends StatelessWidget {
  final Widget child;

  const PhotographyLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [PhotographyHeader(), child, FooterWidget()]),
      ),
    );
  }
}
