import 'package:flutter/material.dart';

class PanditBookingFaqSupportWid extends StatefulWidget {
  const PanditBookingFaqSupportWid({super.key});

  @override
  State<PanditBookingFaqSupportWid> createState() =>
      _PanditBookingFaqSupportWidState();
}

class _PanditBookingFaqSupportWidState
    extends State<PanditBookingFaqSupportWid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // FAQ Header
          const Text(
            'FAQ',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 8),

          // Subtitle
          const Text(
            'Got questions? I\'ve got answers!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 48),

          // FAQ Items
          Column(
            children: [
              _buildFAQItem('Can I change the location after booking?'),
              const SizedBox(height: 16),
              _buildFAQItem('What payment methods do you accept?'),
              const SizedBox(height: 16),
              _buildFAQItem('Is there an extra charge for travel?'),
              const SizedBox(height: 16),
              _buildFAQItem('Can I book a pandit offline?'),
              const SizedBox(height: 16),
              _buildFAQItem(' Do you provide samagri (puja materials)?'),
              const SizedBox(height: 16),
              _buildFAQItem('How much should I pay in advance?'),
              const SizedBox(height: 16),
              _buildFAQItem('Will I get a confirmation after booking?'),
              const SizedBox(height: 16),
              _buildFAQItem('Can I cancel or reschedule my booking?'),
              const SizedBox(height: 16),
              _buildFAQItem('What languages do your pandits speak?'),
              const SizedBox(height: 16),
              _buildFAQItem('Do you have experienced and certified pandits?'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFAQItem(String question) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xbfffffff), // Gray-300 equivalent
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              question,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.4,
              ),
            ),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 24),
        ],
      ),
    );
  }
}
