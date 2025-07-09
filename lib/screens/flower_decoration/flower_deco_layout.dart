import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/footer.dart';
import 'flower_deco_header.dart';

class FlowerDecoLayout extends StatelessWidget {
  final Widget child;

  const FlowerDecoLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [const FlowerDecoHeader(), child, FooterWidget()],
      ),
    );
  }
}
