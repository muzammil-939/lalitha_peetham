import 'package:flutter/material.dart';

import '../widgets/home_header.dart';
import '../widgets/home_hero.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [HomeHeader(), HomeHero()],
        ),
      ),
    );
  }
}
