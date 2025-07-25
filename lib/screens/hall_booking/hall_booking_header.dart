import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HallBookingHeader extends StatelessWidget {
  const HallBookingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side - Logo and brand name
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.calendar_month,
                    color: Color(0xFFFFFFFF),
                    size: 16,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Lalitha Peetham/ Hall Booking',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),

            // Center - Navigation menu
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavItem(context, 'Home', '/hall_booking_home'),
                const SizedBox(width: 40),
                _buildNavItem(context, 'Venues', '/hall_booking_venues'),
                const SizedBox(width: 40),
                _buildNavItem(context, 'About Us', '/hall_booking_aboutus'),
                const SizedBox(width: 40),
                _buildNavItem(
                  context,
                  'My Bookings',
                  '/hall_booking_my_bookings',
                ),
                const SizedBox(width: 50),
                // Right side - List Your Space button
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4AF37), // Golden yellow
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'List Your Space',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String text, String path) {
    return TextButton(
      onPressed: () {
        context.go(path);
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}
