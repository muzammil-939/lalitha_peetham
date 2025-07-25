import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

class OnlineMuhurthasEventSpecific extends StatelessWidget {
  const OnlineMuhurthasEventSpecific({super.key});

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Event - Specific Muhurtams',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 40.0),

            // Marriage Dropdown
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Color(0xFFF8F9FA),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Color(0xFFD4DBE3), width: 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Marriage',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                    size: 20.0,
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.0),

            // Year Dropdown
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Color(0xFFF8F9FA),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Color(0xFFD4DBE3), width: 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2025',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                    size: 20.0,
                  ),
                ],
              ),
            ),

            SizedBox(height: 60.0),

            // Auspicious Dates Title
            Text(
              'Auspicious Dates',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 24.0),

            // Table
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD4DBE3), width: 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  // Table Header
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Date',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Day',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Time',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Tithi',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Nakshatra',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Table Rows
                  _buildTableRow(
                    'July 12, 2024',
                    'Friday',
                    '10:30 AM - 12:00 PM',
                    'Dwitiya',
                    'Rohini',
                  ),
                  _buildTableRow(
                    'July 15, 2024',
                    'Monday',
                    '09:00 AM - 10:30 AM',
                    'Panchami',
                    'Mrigashirsha',
                  ),
                  _buildTableRow(
                    'August 2, 2024',
                    'Friday',
                    '11:00 AM - 12:30 PM',
                    'Tritiya',
                    'Uttara Phalguni',
                  ),
                  _buildTableRow(
                    'August 18, 2024',
                    'Sunday',
                    '08:30 AM - 10:00 AM',
                    'Dashami',
                    'Chitra',
                  ),
                  _buildTableRow(
                    'September 5, 2024',
                    'Thursday',
                    '10:00 AM - 11:30 AM',
                    'Ekadashi',
                    'Anuradha',
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.0),

            // Buttons
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3CD),
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(color: Color(0xFFFFE69C), width: 1.0),
                  ),
                  child: Text(
                    'Download PDF',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF856404),
                    ),
                  ),
                ),

                SizedBox(width: 12.0),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Text(
                    'Consult Astrologer',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40.0),

            // Note
            Text(
              'Note: Muhurtam timings are subject to change based on astrological calculations. Please verify with an astrologer before finalizing any event.',
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.black54,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }

  Widget _buildTableRow(
    String date,
    String day,
    String time,
    String tithi,
    String nakshatra,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xFFD4DBE3), width: 1.0)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              date,
              style: TextStyle(fontSize: 14.0, color: Colors.black87),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              day,
              style: TextStyle(fontSize: 14.0, color: Colors.black87),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              time,
              style: TextStyle(fontSize: 14.0, color: Colors.black87),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              tithi,
              style: TextStyle(fontSize: 14.0, color: Colors.black87),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              nakshatra,
              style: TextStyle(fontSize: 14.0, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
