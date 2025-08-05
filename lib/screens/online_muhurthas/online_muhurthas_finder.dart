import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';


class OnlineMuhurthasFinder extends StatefulWidget {
  const OnlineMuhurthasFinder({super.key});

  @override
  _OnlineMuhurthasFinderState createState() => _OnlineMuhurthasFinderState();
}

class _OnlineMuhurthasFinderState extends State<OnlineMuhurthasFinder> {
  bool matchWithHoroscope = false;
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final screenWidth = ResponsiveHelper.screenWidth(context);
    final screenHeight = ResponsiveHelper.screenHeight(context);

    double baseFontSize(double size) =>
        isMobile ? size * 0.85 : isTablet ? size * 0.95 : size;

    double fieldWidth = isMobile ? screenWidth * 0.9 : 320;
    double fieldHeight = isMobile ? 42 : 44;

    return OnlineMuhurthasLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 16 : screenWidth * 0.1,
          vertical: isMobile ? 24 : 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Auspicious Timings',
              style: TextStyle(
                fontSize: baseFontSize(24),
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 32),

            _buildLabel('Event Type', baseFontSize),
            _buildDropdown('Select Event', fieldWidth, fieldHeight, baseFontSize),

            SizedBox(height: 24),
            _buildLabel('Preferred Month', baseFontSize),
            _buildDropdown('Select Month', fieldWidth, fieldHeight, baseFontSize),

            SizedBox(height: 24),
            _buildLabel('Preferred Year', baseFontSize),
            _buildDropdown('Select Year', fieldWidth, fieldHeight, baseFontSize),

            SizedBox(height: 24),
            _buildLabel('Language', baseFontSize),
            _buildDropdown('Select Language', fieldWidth, fieldHeight, baseFontSize),

            SizedBox(height: 24),
            _buildLabel('Location', baseFontSize),
            _buildDropdown('Select Location', fieldWidth, fieldHeight, baseFontSize),

            SizedBox(height: 24),
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
                  style: TextStyle(fontSize: baseFontSize(14), color: Colors.black87),
                ),
              ],
            ),
            SizedBox(height: 16),

            Container(
              width: double.infinity,
              height: fieldHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'upload horoscope',
                  style: TextStyle(fontSize: baseFontSize(14), color: Colors.black54),
                ),
              ),
            ),
            SizedBox(height: 24),

            Container(
              height: fieldHeight,
              width: isMobile ? screenWidth * 0.9 : 250,
              decoration: BoxDecoration(
                color: Color(0xFFE6B800),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Center(
                child: Text(
                  'Find Auspicious Timings',
                  style: TextStyle(
                    fontSize: baseFontSize(14),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),

            Text(
              'Results',
              style: TextStyle(
                fontSize: baseFontSize(20),
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16),

            Row(
              children: [
                _buildTab('List View', 0, baseFontSize),
                SizedBox(width: 24),
                _buildTab('Calendar View', 1, baseFontSize),
              ],
            ),
            SizedBox(height: 24),

            _buildResultCard('Auspicious Timing 1',
                'Astrological Details: Favorable alignment of planets for the event.',
                'Date: 2024-07-20 | Time Slot: 10:00 AM - 11:00 AM', baseFontSize),
            SizedBox(height: 16),
            _buildResultCard('Auspicious Timing 2',
                'Astrological Details: Auspicious stars and moon phase.',
                'Date: 2024-07-21 | Time Slot: 02:00 PM - 03:00 PM', baseFontSize),
            SizedBox(height: 16),
            _buildResultCard('Auspicious Timing 3',
                'Astrological Details: Positive planetary influences.',
                'Date: 2024-07-22 | Time Slot: 09:00 AM - 10:00 AM', baseFontSize),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String label, double Function(double) fontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize(14),
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  Widget _buildDropdown(String hint, double width, double height, double Function(double) fontSize) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Colors.grey.shade300),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            hint,
            style: TextStyle(fontSize: fontSize(14), color: Colors.black54),
          ),
          Spacer(),
          Icon(Icons.arrow_drop_down, color: Colors.black54),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index, double Function(double) fontSize) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: selectedTab == index ? Colors.black87 : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize(14),
            fontWeight: FontWeight.w500,
            color: selectedTab == index ? Colors.black87 : Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _buildResultCard(
      String title, String details, String dateTime, double Function(double) fontSize) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
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
                    fontSize: fontSize(16),
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(details, style: TextStyle(fontSize: fontSize(12), color: Colors.black54)),
                SizedBox(height: 4),
                Text(dateTime, style: TextStyle(fontSize: fontSize(12), color: Colors.black54)),
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
                fontSize: fontSize(12),
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
