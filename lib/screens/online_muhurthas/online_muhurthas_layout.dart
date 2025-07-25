import 'package:flutter/material.dart';
import '../../../widgets/footer.dart';
import 'online_muhurthas_header.dart';

class OnlineMuhurthasLayout extends StatelessWidget {
  final Widget child;

  const OnlineMuhurthasLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      body: SingleChildScrollView(
        child: Column(
          children: [const OnlineMuhurthasHeader(), child, FooterWidget()],
        ),
      ),
    );
  }
}
