import 'package:flutter/material.dart';

import '../../widgets/footer.dart';
import 'matri_header.dart';

class MatriPageLayout extends StatelessWidget {
  final Widget child;

  const MatriPageLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [const MatriHeader(), child, FooterWidget()]),
      ),
    );
  }
}
