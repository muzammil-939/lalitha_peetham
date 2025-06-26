import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_header.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_notifications/notification_header.dart';
import 'package:lalitha_peetham/widgets/footer.dart';



class AyurvedhaNotiLayout extends StatelessWidget {
  final Widget child;

  const AyurvedhaNotiLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const NotificationHeader(), child, FooterWidget()]),
    );
  }
}
