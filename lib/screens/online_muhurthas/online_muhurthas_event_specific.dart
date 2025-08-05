import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

class OnlineMuhurthasEventSpecific extends StatelessWidget {
  const OnlineMuhurthasEventSpecific({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return OnlineMuhurthasLayout(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile
              ? 16.0
              : isTablet
                  ? 48.0
                  : 200.0,
          vertical: isMobile ? 24.0 : 50.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Event - Specific Muhurtams',
              style: TextStyle(
                fontSize: isMobile ? 20.0 : 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: isMobile ? 24.0 : 40.0),

            _buildDropdownBox('Marriage'),
            SizedBox(height: 30.0),
            _buildDropdownBox('2025'),
            SizedBox(height: 60.0),

            Text(
              'Auspicious Dates',
              style: TextStyle(
                fontSize: isMobile ? 16.0 : 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 24.0),

            // Scrollable Table on Mobile
            isMobile
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(child: _buildTable()),
                  )
                : _buildTable(),

            SizedBox(height: 30.0),

            Wrap(
              spacing: 12.0,
              runSpacing: 12.0,
              children: [
                _buildButton(
                  label: 'Download PDF',
                  backgroundColor: const Color(0xFFFFF3CD),
                  borderColor: const Color(0xFFFFE69C),
                  textColor: const Color(0xFF856404),
                ),
                _buildButton(
                  label: 'Consult Astrologer',
                  backgroundColor: const Color(0xFFD4BB26),
                  textColor: Colors.white,
                ),
              ],
            ),

            SizedBox(height: 40.0),

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

  Widget _buildDropdownBox(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color(0xFFD4DBE3), width: 1.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.black54, size: 20.0),
        ],
      ),
    );
  }

  Widget _buildTable() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD4DBE3), width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            decoration: const BoxDecoration(
              color: Color(0xFFF8F9FA),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Row(
              children: [
                _buildHeaderCell('Date'),
                _buildHeaderCell('Day'),
                _buildHeaderCell('Time'),
                _buildHeaderCell('Tithi'),
                _buildHeaderCell('Nakshatra'),
              ],
            ),
          ),

          // Rows
          _buildTableRow('July 12, 2024', 'Friday', '10:30 AM - 12:00 PM', 'Dwitiya', 'Rohini'),
          _buildTableRow('July 15, 2024', 'Monday', '09:00 AM - 10:30 AM', 'Panchami', 'Mrigashirsha'),
          _buildTableRow('August 2, 2024', 'Friday', '11:00 AM - 12:30 PM', 'Tritiya', 'Uttara Phalguni'),
          _buildTableRow('August 18, 2024', 'Sunday', '08:30 AM - 10:00 AM', 'Dashami', 'Chitra'),
          _buildTableRow('September 5, 2024', 'Thursday', '10:00 AM - 11:30 AM', 'Ekadashi', 'Anuradha'),
        ],
      ),
    );
  }

  static Widget _buildHeaderCell(String text) {
    return Expanded(
      flex: 2,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
          overflow: TextOverflow.ellipsis,
        ),
        maxLines: 1,
      ),
    );
  }

  static Widget _buildTableRow(String date, String day, String time, String tithi, String nakshatra) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xFFD4DBE3), width: 1.0)),
      ),
      child: Row(
        children: [
          _buildCell(date),
          _buildCell(day),
          _buildCell(time),
          _buildCell(tithi),
          _buildCell(nakshatra),
        ],
      ),
    );
  }

  static Widget _buildCell(String text) {
    return Expanded(
      flex: 2,
      child: Text(
        text,
        style: const TextStyle(fontSize: 14.0, color: Colors.black87),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }

  Widget _buildButton({
    required String label,
    required Color backgroundColor,
    Color? borderColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6.0),
        border: borderColor != null
            ? Border.all(color: borderColor, width: 1.0)
            : null,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
