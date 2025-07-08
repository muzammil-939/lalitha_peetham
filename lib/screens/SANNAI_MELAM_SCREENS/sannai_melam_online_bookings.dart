import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_layout.dart';

class SannaiMelamOnlineBookings extends StatefulWidget {
  const SannaiMelamOnlineBookings({super.key});

  @override
  State<SannaiMelamOnlineBookings> createState() =>
      _SannaiMelamOnlineBookingsState();
}

class _SannaiMelamOnlineBookingsState
    extends State<SannaiMelamOnlineBookings> {
  final formatter = NumberFormat.currency(locale: 'en_IN', symbol: '₹');

  @override
  Widget build(BuildContext context) {
    return SannaiMelamLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 50),
            _buildCardGrid(),
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
            Text(' // Sannai Melam',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
            Text(' // Sannai Melam Online Booking',
                style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }

Widget _buildCardGrid() {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'Sri Sakthi Sanai Melam',
      'experience': '7 Yrs Exp',
      'members': '42',
      'location': 'White Field',
      'orders': '1320',
      'rating': '4.5',
      'originalPrice': '₹42,000',
      'discountedPrice': '₹30,000/ hr',
      'image': 'assets/images/sannai_melam_image1.png',
      'isYellowBtn': true,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Sri Sakthi Sanai Melam',
      'experience': '7 Yrs Exp',
      'members': '42',
      'location': 'White Field',
      'orders': '1320',
      'rating': '4.5',
      'originalPrice': '₹42,000',
      'discountedPrice': '₹30,000/ hr',
      'image': 'assets/images/sannai_melam_imag3.png',
      'isYellowBtn': false,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Sri Sakthi Sanai Melam',
      'experience': '7 Yrs Exp',
      'members': '42',
      'location': 'White Field',
      'orders': '1320',
      'rating': '4.5',
      'originalPrice': '₹42,000',
      'discountedPrice': '₹30,000/ hr',
      'image': 'assets/images/sannai4.png',
      'isYellowBtn': true,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Brain Yoga Specialist',
      'experience': '7 Yrs Exp',
      'points': 'Krishna Raju (100 Points)',
      'orders': '1320',
      'originalPrice': '₹21,999.00',
      'discountedPrice': '₹1,850.00/ month',
      'image': 'assets/images/sannai5.png',
      'isYellowBtn': false,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Brain Yoga Specialist',
      'experience': '7 Yrs Exp',
      'points': 'Krishna Raju (100 Points)',
      'orders': '1320',
      'originalPrice': '₹21,999.00',
      'discountedPrice': '₹1,850.00/ month',
      'image': 'assets/images/sannai6.png',
      'isYellowBtn': true,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Brain Yoga Specialist',
      'experience': '7 Yrs Exp',
      'points': 'Krishna Raju (100 Points)',
      'orders': '1320',
      'originalPrice': '₹21,999.00',
      'discountedPrice': '₹1,850.00/ month',
      'image': 'assets/images/sannai7.png',
      'isYellowBtn': false,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Brain Yoga Specialist',
      'experience': '7 Yrs Exp',
      'points': 'Krishna Raju (100 Points)',
      'orders': '1320',
      'originalPrice': '₹21,999.00',
      'discountedPrice': '₹1,850.00/ month',
      'image': 'assets/images/sannai8.png',
      'isYellowBtn': true,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Brain Yoga Specialist',
      'experience': '7 Yrs Exp',
      'points': 'Krishna Raju (100 Points)',
      'orders': '1320',
      'originalPrice': '₹21,999.00',
      'discountedPrice': '₹1,850.00/ month',
      'image': 'assets/images/sannai4.png',
      'isYellowBtn': false,
      'route': '/sannai_service_highlights_1',
    },
    {
      'title': 'Brain Yoga Specialist',
      'experience': '7 Yrs Exp',
      'points': 'Krishna Raju (100 Points)',
      'orders': '1320',
      'originalPrice': '₹21,999.00',
      'discountedPrice': '₹1,850.00/ month',
      'image': 'assets/images/sannai8.png',
      'isYellowBtn': true,
      'route': '/sannai_service_highlights_1',
    },
    // ... add other cards similarly
  ];

  return Wrap(
    spacing: 30,
    runSpacing: 40,
    children: data.map((item) => _buildCard(item)).toList(),
  );
}


  Widget _buildCard(Map<String, dynamic> item) {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(item['image']!, height: 180, width: 300, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(item['title'], style: const TextStyle(fontWeight: FontWeight.bold)),
          if (item['experience'] != null)
            Text.rich(TextSpan(
              children: [
                const TextSpan(text: ' '),
                TextSpan(
                  text: '(${item['experience']})',
                  style: const TextStyle(color: Colors.green),
                ),
              ],
            )),
          const SizedBox(height: 5),
          if (item['points'] == null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Member ${item['members']}",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text("${item['rating']} Rating"),
                Text("Location : ${item['location']}"),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: "Total Order "),
                      TextSpan(
                        text: "(${item['orders']})",
                        style: const TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item['points'],
                    style: const TextStyle(fontWeight: FontWeight.w500)),
                Text("Total Order (${item['orders']})"),
              ],
            ),
          const SizedBox(height: 4),
          Text(item['originalPrice'],
              style: const TextStyle(
                  decoration: TextDecoration.lineThrough, color: Colors.grey)),
          Text(item['discountedPrice'],
              style: const TextStyle(color: Color(0xFFD4BB26), fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                backgroundColor:
                    item['isYellowBtn'] ? const Color(0xFFC1B11F) : const Color(0xFF5A574D),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                final route = item['route'];
                if (route != null) {
                  context.go(route);
                }
              },

              child: const Text('Book Now',
                  style: TextStyle(color: Colors.white, letterSpacing: 1.2)),
            ),
          ),
        ],
      ),
    );
  }
}
