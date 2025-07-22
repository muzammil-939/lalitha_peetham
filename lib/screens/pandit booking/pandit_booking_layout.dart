import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_header.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_header.dart';
import '../../widgets/footer.dart';

class PanditBookingLayout extends StatelessWidget {
  final Widget child;

  const PanditBookingLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [const PanditBookingHeader(), child, FooterWidget()],
      ),
    );
  }
}
