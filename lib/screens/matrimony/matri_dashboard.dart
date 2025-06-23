import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';
import 'matri_dash_subcat.dart';
import 'matri_profile_widget.dart';

class MatriDashboard extends StatelessWidget {
  const MatriDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 768 && size.width < 1200;
    final isMobile = size.width < 768;

    return MatriPageLayout(
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(
          horizontal: _getHorizontalPadding(size.width),
          vertical: _getVerticalPadding(size.width),
        ),
        child: Column(
          children: [
            if (isDesktop)
              _buildDesktopLayout(context, size)
            else if (isTablet)
              _buildTabletLayout(context, size)
            else
              _buildMobileLayout(context, size),
            const SizedBox(height: 20),
            const MatriDashSubcat(),
          ],
        ),
      ),
    );
  }

  double _getHorizontalPadding(double width) {
    if (width >= 1200) return 150.0; // Desktop
    if (width >= 768) return 40.0; // Tablet
    return 16.0; // Mobile
  }

  double _getVerticalPadding(double width) {
    if (width >= 1200) return 50.0; // Desktop
    if (width >= 768) return 30.0; // Tablet
    return 20.0; // Mobile
  }

  Widget _buildDesktopLayout(BuildContext context, Size size) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MatriProfileWidget(),
          const SizedBox(width: 20),
          Expanded(child: _buildMiddleContentPanel(context, size)),
          const SizedBox(width: 20),
          _buildRightPanel(size.height, size.width),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context, Size size) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: MatriProfileWidget()),
              const SizedBox(width: 16),
              Expanded(child: _buildRightPanel(null, size.width)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        _buildMiddleContentPanel(context, size),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context, Size size) {
    return Column(
      children: [
        MatriProfileWidget(),
        const SizedBox(height: 20),
        _buildMiddleContentPanel(context, size),
        const SizedBox(height: 20),
        _buildRightPanel(null, size.width),
      ],
    );
  }

  Widget _buildMiddleContentPanel(BuildContext context, Size size) {
    final isMobile = size.width < 768;

    return Container(
      width: size.width >= 1200 ? size.width * 0.4 : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('YOUR ACTIVITY SUMMARY', size.width),
          SizedBox(height: isMobile ? 16 : 20),
          _buildActivitySummaryGrid(size.width),
          SizedBox(height: isMobile ? 20 : 30),
          _buildSectionTitle('IMPROVE YOUR PROFILE', size.width),
          SizedBox(height: isMobile ? 16 : 20),
          _buildUpgradeSection(context, size),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, double screenWidth) {
    final isMobile = screenWidth < 768;
    return Text(
      title,
      style: TextStyle(
        fontSize: isMobile ? 24 : (screenWidth < 1200 ? 32 : 40),
        letterSpacing: isMobile ? 1 : 2,
        color: const Color(0xffD4BB26),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildActivitySummaryGrid(double screenWidth) {
    final isMobile = screenWidth < 768;
    const cardData = [
      ('63', 'Pending\nInvitations', '2 New', Color(0xFFC4B454)),
      ('20', 'Accepted\nInvitations', '2 New', Color(0xFFC4B454)),
      ('289', 'Recent\nVisitors', '289 New', Color(0xFF4ECDC4)),
    ];

    return Container(
      padding: EdgeInsets.all(isMobile ? 12.0 : 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Top stats cards
          if (isMobile)
            Column(
              children:
                  cardData
                      .map(
                        (data) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: _buildStatsCard(
                            data.$1,
                            data.$2,
                            data.$3,
                            data.$4,
                            screenWidth,
                          ),
                        ),
                      )
                      .toList(),
            )
          else
            Row(
              children:
                  cardData.asMap().entries.map((entry) {
                    final isLast = entry.key == cardData.length - 1;
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: isLast ? 0 : 12),
                        child: _buildStatsCard(
                          entry.value.$1,
                          entry.value.$2,
                          entry.value.$3,
                          entry.value.$4,
                          screenWidth,
                        ),
                      ),
                    );
                  }).toList(),
            ),

          SizedBox(height: isMobile ? 12 : 16),

          // Bottom cards
          if (isMobile)
            Column(
              children: [
                _buildBottomCard(
                  title: 'Only Premium Members\nCan Avail These Benefits',
                  highlightWord: 'Premium',
                  screenWidth: screenWidth,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _buildBottomCard(
                        icon: Icons.circle_outlined,
                        title: 'Contact\nViewed',
                        screenWidth: screenWidth,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildBottomCard(
                        icon: Icons.circle_outlined,
                        title: 'Chat\nInitiated',
                        screenWidth: screenWidth,
                      ),
                    ),
                  ],
                ),
              ],
            )
          else
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildBottomCard(
                    title: 'Only Premium Members\nCan Avail These Benefits',
                    highlightWord: 'Premium',
                    screenWidth: screenWidth,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildBottomCard(
                    icon: Icons.circle_outlined,
                    title: 'Contact\nViewed',
                    screenWidth: screenWidth,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildBottomCard(
                    icon: Icons.circle_outlined,
                    title: 'Chat\nInitiated',
                    screenWidth: screenWidth,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildUpgradeSection(BuildContext context, Size size) {
    final isMobile = size.width < 768;
    final isTablet = size.width >= 768 && size.width < 1200;

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: isMobile ? 200 : 250),
      padding: EdgeInsets.all(isMobile ? 16 : 20),
      decoration: BoxDecoration(
        color: const Color(0xffEFE7C0),
        borderRadius: BorderRadius.circular(8),
      ),
      child:
          isMobile
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                  ),
                  _buildUpgradeContent(context, isMobile),
                ],
              )
              : Row(
                children: [
                  Container(
                    height: isTablet ? 100 : 120,
                    width: isTablet ? 100 : 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(child: _buildUpgradeContent(context, false)),
                ],
              ),
    );
  }

  Widget _buildUpgradeContent(BuildContext context, bool isMobile) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          'BLUE TICK VERIFICATION',
          style: TextStyle(
            fontSize: isMobile ? 16 : 18,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF4A4A4A),
            letterSpacing: 1.0,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
        ),
        const SizedBox(height: 8),
        Text(
          'Register For Free & Put Up\nYour Matrimony Profile',
          style: TextStyle(
            fontSize: isMobile ? 14 : 16,
            color: const Color(0xFF888888),
            height: 1.3,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: isMobile ? double.infinity : null,
          child: ElevatedButton(
            onPressed: () {
              context.go('/upgrade_plans');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFDAA520),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 24 : 32,
                vertical: isMobile ? 16 : 18,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
            ),
            child: Text(
              'UPGRADE NOW',
              style: TextStyle(
                fontSize: isMobile ? 14 : 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRightPanel(double? screenHeight, double screenWidth) {
    //final isDesktop = screenWidth >= 1200;
    final isMobile = screenWidth < 768;

    return Container(
      width: 280,

      constraints: const BoxConstraints(minHeight: 720, maxWidth: 350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [Color(0xffD4BB26), Color(0xffefefef), Color(0xffe7e7e7)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/gift.png',
              height: isMobile ? 150 : 200,
              width: isMobile ? 100 : 150,
              fit: BoxFit.contain,
              errorBuilder:
                  (context, error, stackTrace) => Container(
                    height: isMobile ? 150 : 200,
                    width: isMobile ? 100 : 150,
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.card_giftcard,
                      size: isMobile ? 60 : 80,
                      color: Colors.grey[600],
                    ),
                  ),
            ),

            const SizedBox(height: 20),

            Image.asset(
              'assets/images/save_upto.png',
              height: isMobile ? 75 : 100,
              width: isMobile ? 100 : 150,
              fit: BoxFit.contain,
              errorBuilder:
                  (context, error, stackTrace) => Container(
                    height: isMobile ? 75 : 100,
                    width: isMobile ? 100 : 150,
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.savings,
                      size: isMobile ? 40 : 50,
                      color: Colors.grey[600],
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsCard(
    String number,
    String title,
    String badgeText,
    Color badgeColor,
    double screenWidth,
  ) {
    final isMobile = screenWidth < 768;

    return Container(
      height: isMobile ? 100 : 120,
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E2B8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    number,
                    style: TextStyle(
                      fontSize: isMobile ? 24 : 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: badgeColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  badgeText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile ? 8 : 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            title,
            style: TextStyle(
              fontSize: isMobile ? 12 : 14,
              color: const Color(0xFF666666),
              height: 1.2,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomCard({
    String? title,
    String? highlightWord,
    IconData? icon,
    required double screenWidth,
  }) {
    final isMobile = screenWidth < 768;

    return Container(
      height: isMobile ? 100 : 120,
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E2B8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: isMobile ? 20 : 24,
              color: const Color(0xFFCCCCCC),
            ),
            SizedBox(height: isMobile ? 6 : 8),
          ],
          if (title != null)
            Expanded(
              child:
                  highlightWord != null
                      ? RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: isMobile ? 12 : 14,
                            color: const Color(0xFFCCCCCC),
                            height: 1.3,
                          ),
                          children: _buildTextSpans(title, highlightWord),
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )
                      : Text(
                        title,
                        style: TextStyle(
                          fontSize: isMobile ? 12 : 14,
                          color: const Color(0xFFCCCCCC),
                          height: 1.3,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
            ),
        ],
      ),
    );
  }

  List<TextSpan> _buildTextSpans(String text, String highlightWord) {
    final spans = <TextSpan>[];
    final parts = text.split(highlightWord);
    for (int i = 0; i < parts.length; i++) {
      if (parts[i].isNotEmpty) {
        spans.add(TextSpan(text: parts[i]));
      }
      if (i < parts.length - 1) {
        spans.add(
          TextSpan(
            text: highlightWord,
            style: const TextStyle(
              color: Color(0xFF4ECDC4),
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }
    }
    return spans;
  }
}
