import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaCallRequest extends StatefulWidget {
  const AyurvedhaCallRequest({super.key});

  @override
  AyurvedhaCallRequestState createState() => AyurvedhaCallRequestState();
}

class AyurvedhaCallRequestState extends State<AyurvedhaCallRequest> {
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Container(
        padding: const EdgeInsets.fromLTRB(200, 50, 200, 100),
        decoration: const BoxDecoration(color: Color(0xFFF5EFC2)), // light yellow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header breadcrumb
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 100),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.home, size: 16, color: Colors.black),
                      Text(' / ', style: TextStyle(color: Colors.black, fontSize: 14)),
                      Text('AYURVEDA CONSULTANCY',
                          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                      Text(' // ', style: TextStyle(color: Colors.black, fontSize: 14)),
                      Text('VIDEO CONSULTATION',
                          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.home, size: 24, color: Colors.black),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications, size: 24, color: Colors.black),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4BB26),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_bag, size: 20, color: Colors.black),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 80),

            // Centered Call UI
            Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAC63E), // yellow border
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/doctor.png'), // Update path
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Dr.Ponvannan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Video Call',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 50),

                  // Action Buttons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // More Options Button
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0x2D2D2DBA),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.more_horiz, color: Colors.white),
                      ),
                      const SizedBox(width: 30),

                      // Accept Button
                      ElevatedButton.icon(
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.call, color: Colors.white),
                        label: const Text('ACCEPT',),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF24CB63), // green
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 30),

                      // Decline Button
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffD5382F),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.call_end, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
