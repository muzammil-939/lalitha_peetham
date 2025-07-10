import 'package:flutter/material.dart';
import '../../../widgets/footer.dart';
import 'flower_deco_vendor_header.dart';

class FlowerDecoVendorLayout extends StatelessWidget {
  final Widget child;

  const FlowerDecoVendorLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [const FlowerDecoVendorHeader(), child, FooterWidget()],
        ),
      ),
    );
  }
}
