import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class YogaOrderConfirm extends StatefulWidget {
  const YogaOrderConfirm({super.key});

  @override
  State<YogaOrderConfirm> createState() => _YogaOrderConfirmState();
}

class _YogaOrderConfirmState extends State<YogaOrderConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Thank You Text
            const Text(
              'Thank You For Your Purchase',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 60),

            // Success Icon
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFFE8F5E8),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                size: 40,
                color: Color(0xFF4CAF50),
              ),
            ),
            const SizedBox(height: 40),

            // Order Confirmation Text
            const Text(
              'Order #123RGR231567Y Confirmed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),

            // Track Appointment Button
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle track appointment
                  context.go('');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEAC63E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'View Booking',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Generate Receipt Button
            TextButton(
              onPressed: () {
                // Handle generate receipt
              },
              child: const Text(
                'Generate Receipt',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
