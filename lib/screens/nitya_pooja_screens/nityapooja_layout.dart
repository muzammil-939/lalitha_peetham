import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_header.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_header.dart';
import '../../widgets/footer.dart';

class NityapoojaLayout extends StatelessWidget {
  final Widget child;

  const NityapoojaLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const NityapoojaHeader(), child, FooterWidget()]),
    );
  }
}
