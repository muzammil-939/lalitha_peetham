import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/refer&earn/refer_header.dart';
import 'package:lalitha_peetham/widgets/footer.dart';

class ReferLayout extends StatelessWidget {
  final Widget child;

  const ReferLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const ReferHeader(), child, FooterWidget()]),
    );
  }
}
