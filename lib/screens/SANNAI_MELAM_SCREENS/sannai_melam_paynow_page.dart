import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_layout.dart';
import 'package:intl/intl.dart';

class SannaiMelamPaynowPage extends StatefulWidget {
  const SannaiMelamPaynowPage({super.key});

  @override
  State<SannaiMelamPaynowPage> createState() => _SannaiMelamPaynowPageState();
}

class _SannaiMelamPaynowPageState extends State<SannaiMelamPaynowPage> {
  @override
  Widget build(BuildContext context) {
    return SannaiMelamLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImageSection(),
                const SizedBox(width: 40),
                Expanded(child: _buildDetailsSection()),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            SizedBox(width: 6),
            Text(' // Sannai Melam Online Booking // Service Payment',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Column(
      children: [
        SizedBox(
          width: 350,
          height: 450,
          child: Image.asset('assets/images/sannai_melam_image1.png', fit: BoxFit.cover),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: 180,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFC1B11F),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            ),
            onPressed: () {
              context.go('/sannai_melam_payment');
            },
            child: const Text('PAY NOW', style: TextStyle(color: Colors.white, letterSpacing: 1.2)),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('SRI SAKTHI SANNAI MELAM', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('RAMESH.S(HEAD)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        const Row(
          children: [
            Text('42,000', style: TextStyle(decoration: TextDecoration.lineThrough)),
            SizedBox(width: 8),
            Text('₹30,000 / hr', style: TextStyle(fontSize: 20, color: Colors.orange)),
          ],
        ),
        const SizedBox(height: 10),
        const Text('4.8 Rating\n(210 + Rating)'),
        const Text('Telugu'),
        const Text('Exp: 9 Years'),
        const Text('Team Strength : 15 Years'),
        const SizedBox(height: 20),
        const Text('BOOKING SUMMARY', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const Text('\u2022  Name: Ramesh Kumar'),
        const Text('\u2022  Phone Number: +91 98765 43210'),
        const Text('\u2022  Event Type: Temple Festival'),
        const Text('\u2022  Event Date: 24th June 2025'),
        const Text('\u2022  Time Slot: 6:00 AM – 8:00 AM'),
        const Text('\u2022  Location: Arulmigu Meenakshi Temple, Madurai – 625001'),
        const Text('\u2022  Team Required: 5 Artists'),
        const Text('\u2022  Duration: 2 Hours'),
        const Text('\u2022  Price: ₹15,000'),
      ],
    );
  }
}
