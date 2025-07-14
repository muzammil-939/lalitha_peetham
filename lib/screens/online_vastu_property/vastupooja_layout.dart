import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_header.dart';
import '../../widgets/footer.dart';

class VastupoojaLayout extends StatelessWidget {
  final Widget child;

  const VastupoojaLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const VastupoojaHeader(), child, FooterWidget()]),
    );
  }
}
