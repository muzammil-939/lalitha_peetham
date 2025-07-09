import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/event_management/em_header.dart';

import '../../widgets/footer.dart';

class EmLayout extends StatelessWidget {
  final Widget child;

  const EmLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const EmHeader(), child, FooterWidget()]),
    );
  }
}
