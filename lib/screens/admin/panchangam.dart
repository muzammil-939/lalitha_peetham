import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

import '../../widgets/footer.dart';
import '../../widgets/home_header.dart';

class AdminPanchangam extends StatelessWidget {
  const AdminPanchangam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 200,
                vertical: 50,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header title
                        const Text(
                          'Daily Panchang Widget Customize',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Main title
                        const Text(
                          'Daily Panchang - Discover Auspicious Timings',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFD4AF37), // Golden color
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Description text
                        const Text(
                          'The Panchang Widget Provides Daily Readings Based On\nThe Vedic Calender , Offering\nInsights Into Auspicious Timings And Important Rituals.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.6,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 48),

                        // Navigation buttons row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Location container
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 18,
                                    color: Colors.grey[600],
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'New Delhi, India',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Date container
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 18,
                                    color: Colors.grey[600],
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '21/07/2025',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Previous day button
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.chevron_left,
                                    size: 18,
                                    color: Colors.grey[600],
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Prev Day',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Today button
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFD4AF37), // Golden color
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'Today',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            // Next day button
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Next Day',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 18,
                                    color: Colors.grey[600],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _buildPanchangamfields(),
                  _buildSubmitButton(context),
                ],
              ),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildPanchangamfields() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Sun Rise and Moon Rise Section
            _buildExpandableSection(
              title: 'SUN RISE AND MOON RISE',
              child: Column(
                children: [
                  _buildSunMoonRow('Sun Rise', 'Sun Set'),
                  const SizedBox(height: 16),
                  _buildSunMoonRow('Moon Rise', 'Moon Set'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Tamil Calendar Section
            _buildExpandableSection(
              title: 'TAMIL CALENDAR',
              child: Column(
                children: [
                  _buildTamilCalendarRow(
                    'Tithi',
                    'Dwadashi',
                    'Yogam',
                    'Uttara Bhadra Pal',
                  ),
                  const SizedBox(height: 16),
                  _buildTamilCalendarRow(
                    'Nakshatram',
                    'Sidha',
                    'Yogam Karanam',
                    'Bavum',
                  ),
                  const SizedBox(height: 16),
                  _buildTamilCalendarRow(
                    'Yogam',
                    'Sidha',
                    'Amrit Kalam',
                    '06:00 AM - 00:45 AM',
                  ),
                  const SizedBox(height: 16),
                  _buildTamilCalendarRow(
                    'Varjyam',
                    '02:10pm',
                    'Abhijit Muhurtam',
                    '12:00 AM - 10:45 PM',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Kalams and Muhurthams Section
            _buildExpandableSection(
              title: 'KALAMS AND MUHURTHAMS',
              child: Column(
                children: [
                  _buildKalamRow('Today Special\nNotes', 'Dwadashii'),
                  const SizedBox(height: 16),
                  _buildKalamRow('Vratham\nOr Festival', 'Select Charae'),
                  const SizedBox(height: 16),
                  _buildKalamRow('Varymm', 'Select'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Sri Thathva Chakra Section
            _buildExpandableSection(
              title: 'SRI THATHVA CHAKRA WITH LIVE LAGNA',
              hasIcon: true,
              child: Column(
                children: [
                  _buildKalamRow('Today Special\nNotes', 'Dwadashii'),
                  const SizedBox(height: 16),
                  _buildKalamRow('Vratham\nOr Festival', 'Select Charae'),
                  const SizedBox(height: 16),
                  _buildKalamRow('Amrit Kalam', 'Select'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: SizedBox(
        width: 120,
        height: 45,
        child: ElevatedButton(
          onPressed: () => context.go('/one_to_one_sessions'),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB8A835),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: const Text(
            'SUBMIT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExpandableSection({
    required String title,
    required Widget child,
    bool hasIcon = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF0E7BB),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[400]!)),
            ),
            child: Row(
              children: [
                if (hasIcon) ...[
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey[600],
                  size: 20,
                ),
              ],
            ),
          ),
          // Content
          Padding(padding: const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }

  Widget _buildSunMoonRow(String leftLabel, String rightLabel) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            leftLabel,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[400]!),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: Text(
            rightLabel,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[400]!),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTamilCalendarRow(
    String label1,
    String value1,
    String label2,
    String value2,
  ) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label1,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[400]!),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),

                hintStyle: const TextStyle(fontSize: 13, color: Colors.black87),
              ),
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: Text(
            label2,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[400]!),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                hintStyle: const TextStyle(fontSize: 13, color: Colors.black87),
              ),
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildKalamRow(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 1,
          child: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey[400]!),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),

                hintStyle: const TextStyle(fontSize: 13, color: Colors.black87),
              ),
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }
}
