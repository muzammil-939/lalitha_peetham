import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_header.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_header.dart';
import '../../widgets/footer.dart';

class CateringLayout extends StatelessWidget {
  final Widget child;

  const CateringLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const CateringHeader(), child, FooterWidget()]),
    );
  }
}
