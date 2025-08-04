import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingFaqSupportWid extends StatefulWidget {
  const PanditBookingFaqSupportWid({super.key});

  @override
  State<PanditBookingFaqSupportWid> createState() =>
      _PanditBookingFaqSupportWidState();
}

class _PanditBookingFaqSupportWidState
    extends State<PanditBookingFaqSupportWid> {
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    final horizontalPadding = isMobile
        ? 20.0
        : isTablet
            ? 60.0
            : 150.0;

    final verticalPadding = isMobile
        ? 40.0
        : isTablet
            ? 70.0
            : 100.0;

    final headingFontSize = isMobile ? 24.0 : isTablet ? 28.0 : 32.0;
    final subtitleFontSize = isMobile ? 16.0 : isTablet ? 18.0 : 20.0;
    final questionFontSize = isMobile ? 14.0 : isTablet ? 15.0 : 16.0;
    final spacingBetweenItems = isMobile ? 12.0 : 16.0;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // FAQ Header
          Text(
            'FAQ',
            style: TextStyle(
              fontSize: headingFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 8),

          // Subtitle
          Text(
            'Got questions? I\'ve got answers!',
            style: TextStyle(
              fontSize: subtitleFontSize,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 40),

          // FAQ Items
          Column(
            children: [
              _buildFAQItem('Can I change the location after booking?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('What payment methods do you accept?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('Is there an extra charge for travel?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('Can I book a pandit offline?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('Do you provide samagri (puja materials)?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('How much should I pay in advance?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('Will I get a confirmation after booking?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('Can I cancel or reschedule my booking?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('What languages do your pandits speak?', questionFontSize),
              SizedBox(height: spacingBetweenItems),
              _buildFAQItem('Do you have experienced and certified pandits?', questionFontSize),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFAQItem(String question, double fontSize) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xbfffffff),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              question,
              style: TextStyle(
                fontSize: fontSize,
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
