import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class HallBookingAboutus extends StatelessWidget {
  const HallBookingAboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Us Header
            const Text(
              'About Us',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Discover our journey, values, and the team dedicated to making your events unforgettable.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF7F8C8D),
                height: 1.5,
              ),
            ),

            const SizedBox(height: 60),

            // Our Mission Section
            const Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'At EventHall, our mission is to provide exceptional event spaces and services that exceed our clients\' expectations. We strive to create memorable experiences through meticulous planning, innovative solutions, and a commitment to excellence.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF34495E),
                height: 1.6,
              ),
            ),

            const SizedBox(height: 60),

            // Our Values Section
            const Text(
              'Our Values',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(height: 24),

            // Values Cards Row
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFFE8ECF0),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.search, size: 20, color: Colors.grey[600]),
                        const SizedBox(height: 16),
                        const Text(
                          'Client-Centric',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'We prioritize our clients\' needs, ensuring every event is tailored to their vision.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFFE8ECF0),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.favorite, size: 20, color: Colors.grey[600]),
                        const SizedBox(height: 16),
                        const Text(
                          'Integrity',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'We uphold the highest standards of honesty and transparency in all our interactions.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFFE8ECF0),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.schedule, size: 20, color: Colors.grey[600]),
                        const SizedBox(height: 16),
                        const Text(
                          'Efficiency',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'We optimize our processes to deliver seamless and timely event solutions.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // Our History Section
            const Text(
              'Our History',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(height: 24),

            // History Timeline
            Column(
              children: [
                _buildHistoryItem(
                  'H3',
                  'Established in 2010',
                  'Founded with a vision to transform event experiences.',
                ),
                const SizedBox(height: 20),
                _buildHistoryItem(
                  'H3',
                  'Expanded Services in 2015',
                  'Introduced new event planning and catering services.',
                ),
                const SizedBox(height: 20),
                _buildHistoryItem(
                  'H4',
                  'Awarded Best Event Venue in 2020',
                  'Recognized for outstanding service and client satisfaction.',
                ),
              ],
            ),

            const SizedBox(height: 60),

            // Meet Our Team Section
            const Text(
              'Meet Our Team',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(height: 32),

            // Team Members Row
            SizedBox(
              width: 700,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBDC3C7),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Sophia Carter',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'CEO',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBDC3C7),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Ethan Bennett',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Event Manager',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBDC3C7),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Olivia Hayes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Marketing Director',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            // Contact Us Section
            const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'We\'d love to hear from you! Whether you have questions, need assistance, or want to discuss your event, please reach out to us.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF34495E),
                height: 1.6,
              ),
            ),
            const SizedBox(height: 32),

            // Contact Form
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F3F4),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: const Color(0xFFE8ECF0),
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          'Your Name',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF95A5A6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F3F4),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: const Color(0xFFE8ECF0),
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          'Your Email',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF95A5A6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 120,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F3F4),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: const Color(0xFFE8ECF0),
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          '',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF95A5A6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1C40F),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Send Message',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryItem(String icon, String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 32,
          height: 32,
          child: Center(
            child: Text(
              icon,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2C3E50),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7F8C8D),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
