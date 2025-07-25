import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PanditBookingHeader extends StatelessWidget {
  const PanditBookingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE9BD3F), // Yellow background
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Logo
          SizedBox(
            height: 50,
            child: Image.asset(
              'assets/images/Logo.jpg', // Replace with your logo asset path
              fit: BoxFit.contain,
            ),
          ),

          // Right User Icon
          Row(
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    context.go('/pandit_booking_booking_status');
                  },
                  child: Text(
                    'More',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 30),
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.blue, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
