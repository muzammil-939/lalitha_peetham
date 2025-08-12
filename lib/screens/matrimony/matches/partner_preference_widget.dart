import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

class PartnerPreferencesWidget extends StatelessWidget {
  const PartnerPreferencesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    // final isDesktop = ResponsiveHelper.isDesktop(context);

    // Image sizes requested: adjust based on breakpoint
    final double imageSize = isMobile ? 90.0 : isTablet ? 120.0 : 140.0;
    final double imageBorder = isMobile ? 3.0 : isTablet ? 3.0 : 3.0;

    // Spacing & fonts
    final double outerPadding = isMobile ? 12.0 : 20.0;
    final double headerIconSize = isMobile ? 36.0 : 40.0;
    final double headerTitleFont = isMobile ? 14.0 : 16.0;
    final double subtitleFont = isMobile ? 12.0 : 14.0;
    final double smallFont = isMobile ? 11.0 : 12.0;
    final double matchBoxHPad = isMobile ? 10.0 : 12.0;
    final double matchBoxVPad = isMobile ? 6.0 : 8.0;
    final double circleIndicatorSize = isMobile ? 22.0 : 24.0;

    return Container(
      padding: EdgeInsets.all(outerPadding),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F1E8),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Container(
            margin: EdgeInsets.only(bottom: outerPadding + 4),
            child: Row(
              children: [
                Container(
                  width: headerIconSize,
                  height: headerIconSize,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.format_quote,
                    size: headerIconSize - 10,
                    color: const Color(0xFFD4B08A),
                  ),
                ),
                SizedBox(width: isMobile ? 8 : 10),
                Text(
                  'What He Is Looking For',
                  style: TextStyle(
                    fontSize: headerTitleFont,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFD4B08A),
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),

          // Profile Images Section
          Container(
            margin: EdgeInsets.only(bottom: outerPadding + 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // His Profile (Left)
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: imageSize,
                        height: imageSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFD4B08A), width: imageBorder),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=600&fit=crop&crop=face',
                            fit: BoxFit.cover,
                            width: imageSize,
                            height: imageSize,
                          ),
                        ),
                      ),
                      SizedBox(height: isMobile ? 10 : 16),
                      Text(
                        'His Preferences',
                        style: TextStyle(
                          fontSize: subtitleFont,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFD4B08A),
                        ),
                      ),
                    ],
                  ),
                ),

                // Match Indicator (center)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: isMobile ? 8.0 : 20.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: matchBoxHPad,
                    vertical: matchBoxVPad,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xFFD4B08A)),
                  ),
                  child: Text(
                    'You Match 6/8 Of His Preferences',
                    style: TextStyle(
                      fontSize: smallFont,
                      color: const Color(0xFFD4B08A),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Your Profile (Right)
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: imageSize,
                        height: imageSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFD4B08A), width: imageBorder),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://images.unsplash.com/photo-1494790108755-2616b332c734?w=400&h=600&fit=crop&crop=face',
                            fit: BoxFit.cover,
                            width: imageSize,
                            height: imageSize,
                          ),
                        ),
                      ),
                      SizedBox(height: isMobile ? 10 : 16),
                      Text(
                        'You Match',
                        style: TextStyle(
                          fontSize: subtitleFont,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFD4B08A),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Preferences List
          Column(
            children: [
              _buildPreferenceItem(context, 'Age', '21 To 26', true,
                  titleFont: subtitleFont, valueFont: smallFont, indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(context, 'Height', '5\'5"(165cm) To 5\'11"(180cm)', false,
                  titleFont: subtitleFont, valueFont: smallFont, indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(context, 'Marital Status', 'Never Married', true,
                  titleFont: subtitleFont, valueFont: smallFont, indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(
                  context,
                  'Religion / Community',
                  'Mudaliyar, Mudaliyar - Arcot, Mudaliyar - Saiva, Mudaliyar - Sen...More',
                  false,
                  titleFont: subtitleFont,
                  valueFont: smallFont,
                  indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(
                  context,
                  'Religion / Community',
                  'Mudaliyar, Mudaliyar - Arcot, Mudaliyar - Saiva, Mudaliyar - Sen...More',
                  true,
                  titleFont: subtitleFont,
                  valueFont: smallFont,
                  indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(context, 'Mother Tongue', 'Tamil', true,
                  titleFont: subtitleFont, valueFont: smallFont, indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(context, 'Country Living In', 'Tamil Nadu', true,
                  titleFont: subtitleFont, valueFont: smallFont, indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(context, 'State Living In', 'Tamil Nadu', true,
                  titleFont: subtitleFont, valueFont: smallFont, indicatorSize: circleIndicatorSize),
              _buildPreferenceItem(context, 'Qualification', 'Bachelor / Undergraduate', true,
                  titleFont: subtitleFont, valueFont: smallFont, indicatorSize: circleIndicatorSize),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPreferenceItem(
    BuildContext context,
    String title,
    String value,
    bool isMatched, {
    required double titleFont,
    required double valueFont,
    required double indicatorSize,
  }) {
    final bool isMobile = ResponsiveHelper.isMobile(context);
    final double leftRightSpacing = isMobile ? 10.0 : 16.0;
    final double bottomSpacing = isMobile ? 12.0 : 20.0;

    return Container(
      margin: EdgeInsets.only(bottom: bottomSpacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side - Title and Value
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: titleFont,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFD4B08A),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: valueFont,
                    color: Colors.grey[600],
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: leftRightSpacing),

          // Right side - Match indicator
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Container(
              width: indicatorSize,
              height: indicatorSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isMatched ? const Color(0xFFD4B08A) : Colors.transparent,
                border: Border.all(
                  color: isMatched ? const Color(0xFFD4B08A) : Colors.grey[400]!,
                  width: 2,
                ),
              ),
              child: Center(
                child: isMatched
                    ? Icon(
                        Icons.check,
                        size: indicatorSize * 0.6,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.close,
                        size: indicatorSize * 0.6,
                        color: Colors.grey[400],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
