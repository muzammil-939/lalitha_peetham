import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/footer.dart';
import 'matri_header.dart';
import 'matri_header_2.dart';

class MatriPageLayoutTwo extends StatelessWidget {
  final Widget child;

  const MatriPageLayoutTwo({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const MatriHeaderTwo(), child, FooterWidget()]),
    );
  }
}
