import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_header.dart';
import '../../widgets/footer.dart';

class PvLayout extends StatelessWidget {
  final Widget child;

  const PvLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const PvHeader(), child, FooterWidget()]),
    );
  }
}
