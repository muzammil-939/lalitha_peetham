import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvMyPurchase extends StatefulWidget {
  const PvMyPurchase({super.key});

  @override
  State<PvMyPurchase> createState() => _PvMyPurchaseState();
}

class _PvMyPurchaseState extends State<PvMyPurchase> {
  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Purchases",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Courses",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            _buildCourseCard(
              "Sacred Rituals of Ganesh Puja",
              "Payment Status: Completed",
              "Purchased on: 2024-01-15",
              "assets/images/pv_mypurchase1.png",
            ),
            const SizedBox(height: 12),
            _buildCourseCard(
              "Advanced Techniques in Lakshmi Puja",
              "Payment Status: Completed",
              "Purchased on: 2024-02-20",
              "assets/images/pv_mypurchase2.png",
            ),
            const SizedBox(height: 28),
            const Text(
              "Live Sessions",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            _buildLiveSessionCard(
              "Interactive Session on Shiva Puja",
              "Booking ID: 789012",
              "Scheduled for: 2024-03-25, 10:00 AM",
              "assets/images/pv_mypurchase3.png",
            ),
            const SizedBox(height: 12),
            _buildLiveSessionCard(
              "Q&A on Navagraha Puja",
              "Booking ID: 345678",
              "Scheduled for: 2024-04-10, 02:00 PM",
              "assets/images/pv_mypurchase4.png",
            ),
            const SizedBox(height: 12),
            _buildLiveSessionCard(
              "Interactive Session on Shiva Puja",
              "Booking ID: 789012",
              "Scheduled for: 2024-03-25, 10:00 AM",
              "assets/images/pv_mypurchase5.png",
            ),
            const SizedBox(height: 12),
            _buildLiveSessionCard(
              "Q&A on Navagraha Puja",
              "Booking ID: 345678",
              "Scheduled for: 2024-04-10, 02:00 PM",
              "assets/images/pv_mypurchase6.png",
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseCard(
    String title,
    String status,
    String date,
    String imagePath,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imagePath, height: 50, width: 50, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14)),
                const SizedBox(height: 4),
                Text(status,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
                Text(date,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xFF1FD042),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Access Course",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLiveSessionCard(
    String title,
    String bookingId,
    String schedule,
    String imagePath,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imagePath, height: 50, width: 50, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14)),
                const SizedBox(height: 4),
                Text(bookingId,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
                Text(schedule,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () {
                            context.go('/pv_purchase_successful');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffD4BB26),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'View Details',
                            style: TextStyle(fontSize: 12,color: Colors.black),
                          ),
                        ),
        ],
      ),
    );
  }
}
