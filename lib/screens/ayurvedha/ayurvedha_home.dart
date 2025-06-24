import 'package:flutter/material.dart';

import 'ayur_home_2.dart';
import 'ayur_home_3.dart';
import 'ayurvedh_page_layout.dart';
import 'ayurvedha_hero.dart';

class AyurvedhaHome extends StatefulWidget {
  const AyurvedhaHome({super.key});

  @override
  State<AyurvedhaHome> createState() => _AyurvedhaHomeState();
}

class _AyurvedhaHomeState extends State<AyurvedhaHome> {
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Column(children: [AyurvedhaHero(), AyurHome2(), AyurHome3()]),
    );
  }
}
