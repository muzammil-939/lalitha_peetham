import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/inbox_header.dart';
import 'package:lalitha_peetham/widgets/footer.dart';


class InboxHeaderLayout extends StatelessWidget {
  final Widget child;

  const InboxHeaderLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const InboxHeader(), child, FooterWidget()]),
    );
  }
}
