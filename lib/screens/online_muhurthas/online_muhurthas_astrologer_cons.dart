import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

class OnlineMuhurthasAstrologerConsultation extends StatelessWidget {
  const OnlineMuhurthasAstrologerConsultation({super.key});

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'Consult with Verified Astrologers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 32),

            // Language Dropdown
            Container(
              width: 350,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFE0E0E0)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Language',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                    size: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Expertise Dropdown
            Container(
              width: 350,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFE0E0E0)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Expertise',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                    size: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Sort By Dropdown
            Container(
              width: 350,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFE0E0E0)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sort By',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                    size: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Astrologer Cards
            _buildAstrologerCard(
              name: 'Astrologer Priya Sharma',
              languages: 'Hindi, English',
              experience: '15 years experience',
              imagePath: 'assets/images/priya.jpg',
            ),
            const SizedBox(height: 16),

            _buildAstrologerCard(
              name: 'Astrologer Ravi Kumar',
              languages: 'Tamil, Telugu',
              experience: '10 years experience',
              imagePath: 'assets/images/ravi.jpg',
            ),
            const SizedBox(height: 16),

            _buildAstrologerCard(
              name: 'Astrologer Meera Patel',
              languages: 'Marathi, Gujarati',
              experience: '12 years experience',
              imagePath: 'assets/images/meera.jpg',
            ),
            const SizedBox(height: 16),

            _buildAstrologerCard(
              name: 'Astrologer Aniket Das',
              languages: 'Bengali, Oriya',
              experience: '8 years experience',
              imagePath: 'assets/images/aniket.jpg',
            ),
            const SizedBox(height: 40),

            // Consultation Types Section
            const Text(
              'Consultation Types',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),

            // Consultation Type Cards
            _buildConsultationTypeCard(
              icon: Icons.calendar_today,
              title: 'Muhurtam Suggesti...',
            ),
            const SizedBox(height: 12),

            _buildConsultationTypeCard(
              icon: Icons.people,
              title: 'Horoscope Matching',
            ),
            const SizedBox(height: 12),

            _buildConsultationTypeCard(
              icon: Icons.help_outline,
              title: 'Personal Q&A',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAstrologerCard({
    required String name,
    required String languages,
    required String experience,
    required String imagePath,
  }) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Profile Image
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Icon(Icons.person, color: Colors.grey, size: 24),
          ),
          const SizedBox(width: 16),

          // Astrologer Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '$languages | $experience',
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),

          // Book Appointment Button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Book Appointment',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConsultationTypeCard({
    required IconData icon,
    required String title,
  }) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(icon, color: Colors.black87, size: 20),
          ),
          const SizedBox(width: 16),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),

          const Icon(Icons.arrow_forward, color: Colors.black54, size: 20),
        ],
      ),
    );
  }
}
