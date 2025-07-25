import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/footer.dart';

import 'hall_booking_header.dart';

class HallBookingLayout extends StatelessWidget {
  final Widget child;

  const HallBookingLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [const HallBookingHeader(), child, FooterWidget()],
      ),
    );
  }
}
