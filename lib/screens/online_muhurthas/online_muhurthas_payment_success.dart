import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class OnlineMuhurthasPaymentSuccess extends StatelessWidget {
  const OnlineMuhurthasPaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ResponsiveHelper.isMobile(context);
    final bool isTablet = ResponsiveHelper.isTablet(context);
    final bool isDesktop = ResponsiveHelper.isDesktop(context);
    final double screenWidth = ResponsiveHelper.screenWidth(context);

    return OnlineMuhurthasLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: isMobile ? 30 : 60,
          horizontal: isMobile ? 16 : 0,
        ),
        child: Center(
          child: SizedBox(
            width: isMobile
                ? double.infinity
                : isTablet
                    ? 700
                    : 1000,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
                  isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                // Header
                Center(
                  child: Text(
                    'Payment Successful',
                    style: TextStyle(
                      fontSize: isMobile ? 22 : 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(height: isMobile ? 16 : 24),

                // Success message
                Center(
                  child: Text(
                    'Your payment has been successfully processed. Thank you for your booking!',
                    style: TextStyle(
                      fontSize: isMobile ? 14 : 16,
                      color: Colors.grey[600],
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: isMobile ? 32 : 48),

                // Booking Summary
                Text(
                  'Booking Summary',
                  style: TextStyle(
                    fontSize: isMobile ? 18 : 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: isMobile ? 20 : 32),

                // Details Table
                Container(
                  padding: EdgeInsets.all(isMobile ? 16 : 24),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      buildInfoRow(context, 'Consultation Type', 'Muhurtam Consultation',
                          'Date', 'July 20, 2024'),
                      SizedBox(height: isMobile ? 20 : 28),
                      buildInfoRow(context, 'Time', '10:00 AM',
                          'Astrologer', 'Astrologer Sharma'),
                      SizedBox(height: isMobile ? 20 : 28),
                      buildInfoRow(context, 'Amount Paid', '\$50', '', ''),
                    ],
                  ),
                ),
                SizedBox(height: isMobile ? 32 : 48),

                // Next Steps
                Text(
                  'Next Steps',
                  style: TextStyle(
                    fontSize: isMobile ? 18 : 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: isMobile ? 16 : 24),

                Text(
                  'You will receive a confirmation email with all the details of your booking. '
                  'Please ensure you are available at the scheduled time. If you have any questions, feel free to contact us.',
                  style: TextStyle(
                    fontSize: isMobile ? 14 : 16,
                    color: Colors.grey[600],
                    height: 1.5,
                  ),
                ),
                SizedBox(height: isMobile ? 28 : 40),

                // Button
                Align(
                  alignment: isMobile ? Alignment.center : Alignment.centerLeft,
                  child: SizedBox(
                    width: isMobile ? double.infinity : 320,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFD4BB26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'View Booking Details',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(BuildContext context, String label1, String value1,
      String label2, String value2) {
    final bool isMobile = ResponsiveHelper.isMobile(context);

    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLabelValue(label1, value1),
          SizedBox(height: 12),
          if (label2.isNotEmpty) buildLabelValue(label2, value2),
        ],
      );
    }

    return Row(
      children: [
        Expanded(child: buildLabelValue(label1, value1)),
        SizedBox(width: 40),
        Expanded(
          child: label2.isNotEmpty
              ? buildLabelValue(label2, value2)
              : SizedBox(),
        ),
      ],
    );
  }

  Widget buildLabelValue(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 6),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
