import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_pooja/e_pooja_layout.dart';

class PoojaRescheduleConfirmedPage extends StatefulWidget {
  const PoojaRescheduleConfirmedPage({super.key});

  @override
  State<PoojaRescheduleConfirmedPage> createState() => _PoojaRescheduleConfirmedPageState();
}

class _PoojaRescheduleConfirmedPageState extends State<PoojaRescheduleConfirmedPage> {
  @override
  Widget build(BuildContext context) {
    return EPoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildConfirmSection(context),
          ],
        ),
      ),
    );
  }
  Widget buildConfirmSection(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;
  final isTablet = screenWidth >= 600 && screenWidth < 1100;
  final isDesktop = screenWidth >= 1100;

  final horizontalPadding = isDesktop ? 250.0 : isTablet ? 60.0 : 16.0;
  final titleFontSize = isDesktop ? 26.0 : isTablet ? 24.0 : 22.0;
  final contentFontSize = isMobile ? 14.0 : 16.0;
  final watermarkSize = isMobile ? 130.0 : 150.0;
  final planetSize = isMobile ? 50.0 : 80.0;

  return Stack(
    children: [
      // 🌄 Full Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
      // 🌑 Planet image on top-right
      Positioned(
        top: 20,
        right: 20,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: planetSize,
          width: planetSize,
        ),
      ),

      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Main heading
            Text(
              "Pooja Reschedule Confirmed",
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            // 📦 Yellow container
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color(0xFFE9BD3F),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  // Background watermark
                  Center(
                    child: Opacity(
                      opacity: 0.05,
                      child: SizedBox(
                        height: watermarkSize,
                        width: watermarkSize,
                        child: Image.asset(
                          'assets/images/vector (2).png',
                          fit: BoxFit.cover,
                          //color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  // 🔤 Text Content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.check_box, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Pooja Rescheduled',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Hi Ramesh Kumar, your Satyanarayan Pooja with\n'
                        'Sree Lalitha Peetham has been rescheduled.',
                        style: TextStyle(fontSize: contentFontSize),
                      ),
                      const SizedBox(height: 20),

                      Row(
                        children: const [
                          Icon(Icons.calendar_today, size: 20, color: Colors.black87),
                          SizedBox(width: 8),
                          Text('New Date: 28-05-25', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 10),

                      Row(
                        children: const [
                          Icon(Icons.access_time, size: 20, color: Colors.black87),
                          SizedBox(width: 8),
                          Text('Time: 7:00 AM – 10:30 AM', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 10),

                      Row(
                        children: const [
                          Icon(Icons.location_on, size: 20, color: Colors.black87),
                          SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              'Platform: Zoom (link will be sent 24 hrs before)',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

}