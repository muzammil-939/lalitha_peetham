import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

class OrdersPageContainer extends StatelessWidget {
  const OrdersPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // Responsive values
    final outerHorizontalPadding = isMobile ? 12.0 : isTablet ? 28.0 : 150.0;
    final outerVerticalPadding = isMobile ? 12.0 : 40.0;
    final leftColumnWidth = isMobile ? double.infinity : (isTablet ? 220.0 : 260.0);
    final gapBetweenColumns = isMobile ? 12.0 : 40.0;
    final sidebarPadding = isMobile ? 12.0 : 20.0;
    final navItemFont = isMobile ? 13.0 : 14.0;
    final headerFont = isMobile ? 20.0 : isTablet ? 22.0 : 24.0;
    final smallText = isMobile ? 12.0 : 14.0;
    final profileInputWidth = isMobile ? 120.0 : 140.0;
    final profileInputHeight = isMobile ? 36.0 : 40.0;
    final buttonHeight = profileInputHeight;
    final iconGap = isMobile ? 6.0 : 8.0;
    final cardPadding = isMobile ? 14.0 : 20.0;
    final cardBorderRadius = isMobile ? 6.0 : 5.0;
    final headerColor = const Color(0xFFE67E22);

    Widget leftSidebar() {
      // On mobile show compact card; on larger screens show full sidebar
      return Container(
        width: leftColumnWidth == double.infinity ? null : leftColumnWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Yellow Sidebar / Quick Links
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xFFD4B942)),
              padding: EdgeInsets.all(sidebarPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MY QUICK LINKS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: navItemFont,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: isMobile ? 12 : 20),
                  _buildNavItem('• Shortlists & More', navItemFont),
                  _buildDivider(),
                  _buildNavItem('• New Matches', navItemFont),
                  _buildDivider(),
                  _buildNavItem('• My Matches', navItemFont),
                  _buildDivider(),
                  _buildNavItem('• Near Me', navItemFont),
                  _buildDivider(),
                  _buildNavItem('• Add Saved Searches', navItemFont),
                  _buildDivider(),
                  _buildNavItem('• My Help', navItemFont),
                ],
              ),
            ),

            SizedBox(height: isMobile ? 12 : 24),

            // PROFILE ID SEARCH (kept compact on mobile)
            Text(
              'PROFILE ID SEARCH',
              style: TextStyle(
                color: Colors.black,
                fontSize: navItemFont,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: isMobile ? 8 : 12),
            Row(
              children: [
                Container(
                  width: profileInputWidth,
                  height: profileInputHeight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!),
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: isMobile ? 11 : 12),
                    decoration: InputDecoration(
                      hintText: 'Enter Profile Id',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: isMobile ? 11 : 12,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 8 : 10,
                        vertical: 8,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: headerColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 15),
                      elevation: 1,
                    ),
                    child: Text(
                      'Go',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile ? 11 : 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: isMobile ? 12 : 24),

            // Useful links
            Text(
              'USEFUL LINKS',
              style: TextStyle(
                color: Colors.black,
                fontSize: navItemFont,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: isMobile ? 8 : 12),
            _buildUsefulLink('🔗', 'Refer A Friend', smallText, iconGap),
            SizedBox(height: isMobile ? 6 : 8),
            _buildUsefulLink('❓', 'Need Help?', smallText, iconGap),
            SizedBox(height: isMobile ? 6 : 8),
            _buildUsefulLink('📋', 'Security Tips', smallText, iconGap),
          ],
        ),
      );
    }

    Widget rightCard() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(cardBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: isMobile ? 4 : 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.all(cardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MY ORDERS',
              style: TextStyle(
                color: headerColor,
                fontSize: headerFont,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.8,
              ),
            ),
            SizedBox(height: isMobile ? 12 : 20),
            Text(
              'This Section Provides Details About Your Orders',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: smallText,
                height: 1.4,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'For Our Premium Services.',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: smallText,
                height: 1.4,
              ),
            ),
            SizedBox(height: isMobile ? 12 : 20),
            Text(
              'You Have Not Placed Any Orders With Us.',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: smallText,
                height: 1.4,
              ),
            ),

            
            SizedBox(height: isMobile ? 14 : 200),

            // Help info at bottom
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: isMobile ? 12 : 13,
                  height: 1.5,
                ),
                children: [
                  const TextSpan(
                    text:
                        'If You Require Any Further Help Or Information, Please Feel\nFree To Write To ',
                  ),
                  TextSpan(
                    text: 'Customer Support',
                    style: TextStyle(
                      color: headerColor,
                      decoration: TextDecoration.underline,
                      fontSize: isMobile ? 12 : 13,
                    ),
                  ),
                  const TextSpan(text: ' Or Call Us At\n'),
                  TextSpan(
                    text: '+91-8905031111',
                    style: TextStyle(
                      color: headerColor,
                      fontSize: isMobile ? 12 : 13,
                    ),
                  ),
                  const TextSpan(text: ' With Your '),
                  TextSpan(
                    text: 'Order ID',
                    style: TextStyle(
                      color: headerColor,
                      decoration: TextDecoration.underline,
                      fontSize: isMobile ? 12 : 13,
                    ),
                  ),
                  const TextSpan(text: ' And A Description Of The\nIssue.'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Main layout: column on mobile, row on larger screens
    return MatriPageLayout(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          color: const Color(0xFFF5F6F8),
          padding: EdgeInsets.symmetric(
            vertical: outerVerticalPadding,
            horizontal: outerHorizontalPadding,
          ),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // On mobile we show the sidebar first as a card
                    leftSidebar(),
                    SizedBox(height: gapBetweenColumns),
                    rightCard(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // left fixed width sidebar
                    SizedBox(
                      width: leftColumnWidth,
                      child: leftSidebar(),
                    ),
                    SizedBox(width: gapBetweenColumns),
                    // right expands
                    Expanded(child: rightCard()),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String text, double fontSize) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: fontSize == 13 ? 8 : 12),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: fontSize, height: 1.3),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(height: 1, color: Colors.white.withOpacity(0.3));
  }

  Widget _buildUsefulLink(String icon, String text, double fontSize, double gap) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(icon, style: TextStyle(fontSize: fontSize)),
        SizedBox(width: gap),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: const Color(0xFFE67E22),
              fontSize: fontSize,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
