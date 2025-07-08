import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_header.dart';

import '../../widgets/footer.dart';

class SannaiMelamLayout extends StatelessWidget {
  final Widget child;

  const SannaiMelamLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const SannaiMelamHeader(), child, FooterWidget()]),
    );
  }
}
