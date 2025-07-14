import 'package:flutter/material.dart';

class PhotographyFaq extends StatefulWidget {
  const PhotographyFaq({super.key});

  @override
  State<PhotographyFaq> createState() => _PhotographyFaqState();
}

class _PhotographyFaqState extends State<PhotographyFaq> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 200),
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
              _buildFAQItem('Can we meet you before the wedding?'),
              const SizedBox(height: 16),
              _buildFAQItem('How do we receive our photos?'),
              const SizedBox(height: 16),
              _buildFAQItem('What if our event runs longer than planned?'),
              const SizedBox(height: 16),
              _buildFAQItem('Do you offer second shooters?'),
              const SizedBox(height: 16),
              _buildFAQItem('How do you handle image rights and usage?'),
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
        color: const Color(0xFFD1D5DB), // Gray-300 equivalent
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
