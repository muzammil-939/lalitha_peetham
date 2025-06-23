import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/footer.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/matches_header.dart';
import '../matri_header.dart';
import '../matri_header_2.dart';

class MatchesHeaderLayout extends StatelessWidget {
  final Widget child;

  const MatchesHeaderLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [const MatchesHeader(), child, FooterWidget()]),
    );
  }
}
