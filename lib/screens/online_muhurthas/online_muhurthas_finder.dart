import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

class OnlineMuhurthasFinder extends StatefulWidget {
  const OnlineMuhurthasFinder({super.key});

  @override
  _OnlineMuhurthasFinderState createState() => _OnlineMuhurthasFinderState();
}

class _OnlineMuhurthasFinderState extends State<OnlineMuhurthasFinder> {
  bool matchWithHoroscope = false;
  int selectedTab = 0; // 0 for List View, 1 for Calendar View

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(150, 60, 250, 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Find Auspicious Timings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 32),

            // Event Type
            Text(
              'Event Type',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 320,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Select Event',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down, color: Colors.black54),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Preferred Month
            Text(
              'Preferred Month',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 320,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Select Month',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down, color: Colors.black54),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Preferred Year
            Text(
              'Preferred Year',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 320,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Select Year',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down, color: Colors.black54),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Language
            Text(
              'Language',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 320,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Select Language',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down, color: Colors.black54),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Location
            Text(
              'Location',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 320,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Select Location',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down, color: Colors.black54),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Checkbox
            Row(
              children: [
                Checkbox(
                  value: matchWithHoroscope,
                  onChanged: (value) {
                    setState(() {
                      matchWithHoroscope = value ?? false;
                    });
                  },
                  activeColor: Colors.white,
                  checkColor: Colors.black87,
                  side: BorderSide(color: Colors.black54, width: 1.5),
                ),
                Text(
                  'Match with my horoscope',
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Upload horoscope field
            Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'upload horoscope',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
            ),
            SizedBox(height: 24),

            // Find Auspicious Timings Button
            Container(
              height: 44,
              width: 250,
              decoration: BoxDecoration(
                color: Color(0xFFE6B800),
                borderRadius: BorderRadius.circular(22),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Center(
                child: Text(
                  'Find Auspicious Timings',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),

            // Results Section
            Text(
              'Results',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16),

            // Tab buttons
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color:
                              selectedTab == 0
                                  ? Colors.black87
                                  : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      'List View',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:
                            selectedTab == 0 ? Colors.black87 : Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 24),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color:
                              selectedTab == 1
                                  ? Colors.black87
                                  : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      'Calendar View',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:
                            selectedTab == 1 ? Colors.black87 : Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),

            // Result Cards
            _buildResultCard(
              'Auspicious Timing 1',
              'Astrological Details: Favorable alignment of planets for the event.',
              'Date: 2024-07-20 | Time Slot: 10:00 AM - 11:00 AM',
            ),
            SizedBox(height: 16),
            _buildResultCard(
              'Auspicious Timing 2',
              'Astrological Details: Auspicious stars and moon phase.',
              'Date: 2024-07-21 | Time Slot: 02:00 PM - 03:00 PM',
            ),
            SizedBox(height: 16),
            _buildResultCard(
              'Auspicious Timing 3',
              'Astrological Details: Positive planetary influences.',
              'Date: 2024-07-22 | Time Slot: 09:00 AM - 10:00 AM',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard(String title, String details, String dateTime) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  details,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                SizedBox(height: 4),
                Text(
                  dateTime,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xFFE6B800),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              'Book Astrologer',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
