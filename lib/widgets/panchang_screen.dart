import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanchangScreen extends StatelessWidget {
  const PanchangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 12 : 24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLeftColumn(context),
                    const SizedBox(height: 20),
                    _buildRightColumn(context),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 2, child: _buildLeftColumn(context)),
                    SizedBox(width: isTablet ? 20 : 50),
                    Expanded(flex: 1, child: _buildRightColumn(context)),
                  ],
                ),
        ),
      ),
    );
  }

  // Left Column
  Widget _buildLeftColumn(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "AUSPICIOUS TIMING",
          style: TextStyle(
            fontSize: isMobile ? 10 : 12,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "TODAY’S MUHURTHAM & PANCHANG",
          style: TextStyle(
            fontSize: isMobile ? 18 : 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Find the best time for your activities today.",
          style: TextStyle(
            fontSize: isMobile ? 14 : 16,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Monday, 11 August 2025 | Shravana Shukla Trayodashi",
          style: TextStyle(fontSize: 14, color: Colors.black87),
        ),
        const SizedBox(height: 20),

        // Times
        _buildTimeRow("Sunrise/Sunset", "6:00 AM / 7:00 PM"),
        _buildTimeRow("Moon Rise", "06 : 31 Am"),
        _buildTimeRow("suryarasi", "11:59 Am"),
        _buildTimeRow("chandra rasi", "12 : 50 Am"),

        const SizedBox(height: 20),
        Text(
          "AUSPICIOUS MUHURTHAS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isMobile ? 14 : 16,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),

        _buildTimeRow("Amrutha Gadiyalu", "10:00 AM - 11:30 AM"),
        _buildTimeRow("varajamu", "1:00 PM - 2:30 PM"),
        _buildTimeRow("Dhurmuhurtham", "4:00 PM - 5:30 PM"),
        _buildTimeRow("Gulika Kalam: Night", "2:15 Mins to 3:42 Mins"),
        _buildTimeRow("Yamagandam: Night", "2:15 Mins to 3:42 Mins"),
        _buildTimeRow("Aparanna Kalalu: Afternoon 12:05 Mins", "12 : 05 Mins"),
        _buildTimeRow("Eroju Prayanamu: West", "west"),

        const SizedBox(height: 24),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFC3B31F),
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : 20,
              vertical: isMobile ? 12 : 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: () {},
          child: Text(
            "VIEW FULL PANCHANG",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: isMobile ? 12 : 14,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // Right Column
  Widget _buildRightColumn(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Today’s Rasi Chakra",
          style: TextStyle(
            fontSize: isMobile ? 18 : 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple, width: 1),
          ),
          child: Image.asset(
            "assets/images/rashi_chakra.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "SUKTHI",
          style: TextStyle(
            fontSize: isMobile ? 14 : 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Swasti Sri Chandramana Sri Sharvari Nama\n"
          "Year Uttarayanam Winter Pushyamsam\n"
          "Shukla Ashtami Morning 3:26 min to\n"
          "Thursday Ashwini Nakshatram Morning 3:40 min, Sadhya Yoga Vishti Karanam\n"
          "Shubhavishishtam.",
          style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
        ),
        const SizedBox(height: 20),
        const Text(
          "Subhamastu Mangalamastu\nSri Sri Sri Sri",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _buildTimeRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 14, color: Colors.black87)),
          Text(value, style: const TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }
}
