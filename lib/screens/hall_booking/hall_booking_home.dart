import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class HallBookingHome extends StatelessWidget {
  const HallBookingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 80),
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/hall_booking_imgs/hall_booking_home.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Main Heading
                    const Text(
                      'Find the Perfect Venue for Your Event',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Subtitle
                    const Text(
                      'Discover a wide range of halls and spaces for any occasion, from corporate meetings to weddings and parties.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Button Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Book Your Hall Now Button
                        ElevatedButton(
                          onPressed: () {
                            context.go('/hall_booking_hall_search');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFD4BB26),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Book Your Hall Now',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),

                        // Check Availability Button
                        OutlinedButton(
                          onPressed: () {
                            context.go('/hall_booking_Inquire');
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            'Check Availability',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60),

            // Form Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Select Location Field
                Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select Location',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Date & Time Field
                Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Date & Time',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Type of Event Field
                Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Type of Event',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Search Halls Button
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/hall_booking_hall_search');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4BB26),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Search Halls',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
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
}
