import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_layout.dart';
import '../../matrimony/matri_profile_widget.dart';
import 'flower_deco_profile_widget.dart';
import 'flower_deco_vendor_dashnotifi.dart';

class FlowerDecoVendorDash extends StatelessWidget {
  const FlowerDecoVendorDash({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 768 && size.width < 1200;
    final isMobile = size.width < 768;

    return FlowerDecoVendorLayout(
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(
          horizontal: _getHorizontalPadding(size.width),
          vertical: _getVerticalPadding(size.width),
        ),
        child: Column(
          children: [
            if (isDesktop)
              _buildDesktopLayout(context, size, isDesktop)
            else if (isTablet)
              _buildTabletLayout(context, size, isDesktop)
            else
              _buildMobileLayout(context, size, isDesktop),
            const SizedBox(height: 20),
            _buildReminderCard(),
            const SizedBox(height: 100),
            _buildSubDash(
              txt: 'Earnings',
              subtxt: 'Earnings',
              imgPath: 'assets/images/flower_vendor_offer_3.png',
            ),
            const SizedBox(height: 60),
            _buildSubDash(
              txt: 'Decoration Bookings',
              subtxt: 'Bookings',
              imgPath: 'assets/images/flower_vendor_offer_4.png',
            ),
            const SizedBox(height: 60),
            _buildSubDash(
              txt: 'Profile Views',
              subtxt: 'Cases',
              imgPath: 'assets/images/flower_vendor_offer_4.png',
            ),
            const SizedBox(height: 60),
            NotificationsContainer(),
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

  Widget _buildDesktopLayout(BuildContext context, Size size, isDesktop) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlowerDecoProfileWidget(),
          const SizedBox(width: 20),
          Expanded(child: _buildMiddleContentPanel(context, size, isDesktop)),
          const SizedBox(width: 20),
          _buildRightPanel(size.height, size.width),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context, Size size, isDesktop) {
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
        _buildMiddleContentPanel(context, size, isDesktop),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context, Size size, isDesktop) {
    return Column(
      children: [
        MatriProfileWidget(),
        const SizedBox(height: 20),
        _buildMiddleContentPanel(context, size, isDesktop),
        const SizedBox(height: 20),
        _buildRightPanel(null, size.width),
      ],
    );
  }

  Widget _buildMiddleContentPanel(BuildContext context, Size size, isDesktop) {
    final isMobile = size.width < 768;

    return Container(
      width: size.width >= 1200 ? size.width * 0.4 : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: isDesktop ? 30 : 0),
          // Search Bar
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search any keywords',
                hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[500],
                  size: 20,
                ),
                suffixIcon: Icon(Icons.mic, color: Colors.grey[500], size: 20),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
            ),
          ),

          SizedBox(height: isDesktop ? 50 : 0),

          // Activity Summary Title
          _buildSectionTitle('YOUR ACTIVITY SUMMARY', size.width),
          const SizedBox(height: 20),

          // Earnings Summary Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFE8E2B8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  'Earnings Summary',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '17,989.00',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Stats Grid
          _buildStatsGrid(size.width),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildStatsGrid(double screenWidth) {
    final isMobile = screenWidth < 768;

    return Column(
      children: [
        // First Row
        Row(
          children: [
            Expanded(
              child: _buildStatsCard(
                '473',
                'Total Booking',
                '4 New',
                const Color(0xFFDAA520),
                screenWidth,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatsCard(
                '20',
                'Upcoming\nBooking',
                '2 New',
                const Color(0xFFDAA520),
                screenWidth,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatsCard(
                '289',
                'Pending\nRequests',
                '289 New',
                const Color(0xFF4ECDC4),
                screenWidth,
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        // Second Row
        Row(
          children: [
            Expanded(
              child: _buildStatsCard(
                '63',
                'Completed\nEvents',
                '15 New',
                const Color(0xFFDAA520),
                screenWidth,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatsCard(
                '153',
                'Total Reviews',
                '',
                const Color(0xFFDAA520),
                screenWidth,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatsCard(
                '289',
                'Messages\nReceived',
                '89 Unread',
                const Color(0xFF4ECDC4),
                screenWidth,
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        // Third Row
        Row(
          children: [
            Expanded(
              child: _buildStatsCard(
                '25',
                'Your Group',
                '289 New',
                const Color(0xFF4ECDC4),
                screenWidth,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: _buildStatsCard(
                '1YR',
                'Your Validity',
                '289 New',
                const Color(0xFF4ECDC4),
                screenWidth,
              ),
            ),
          ],
        ),
      ],
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

  Widget _buildRightPanel(double? screenHeight, double screenWidth) {
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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/flower_vendor_offer_1.png',
              height: isMobile ? 150 : 400,
              width: isMobile ? 100 : 150,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/flower_vendor_offer_2.png',
              height: isMobile ? 75 : 200,
              width: isMobile ? 100 : 150,
              fit: BoxFit.contain,
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
                      fontSize: isMobile ? 20 : 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
              ),
              if (badgeText.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: badgeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    badgeText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? 8 : 9,
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
              fontSize: isMobile ? 11 : 12,
              color: const Color(0xFF666666),
              height: 1.2,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildReminderCard() {
    return Container(
      height: 600,
      margin: EdgeInsets.symmetric(horizontal: 150),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left Section
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    'send reminders to customer',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Search Bar
                  Container(
                    height: 48,
                    decoration: BoxDecoration(color: Color(0xFFEFE7C0)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search by user id , name',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                        suffixIcon: Icon(Icons.mic, color: Colors.grey[600]),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),

                  // Customer List
                  Expanded(
                    child: Column(
                      children: [
                        // First Row
                        Row(
                          children: [
                            Expanded(
                              child: _buildCustomerOption('Ramya', false),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: _buildCustomerOption('Thaya', false),
                            ),
                            SizedBox(width: 16),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[400]!),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.grey[600],
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),

                        // Second Row
                        Row(
                          children: [
                            Expanded(
                              child: _buildCustomerOption('Priya', false),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: _buildCustomerOption(
                                'Priya Sharma',
                                false,
                              ),
                            ),
                            SizedBox(width: 56), // Space for alignment
                          ],
                        ),
                        SizedBox(height: 16),

                        // Third Row
                        Row(
                          children: [
                            Expanded(
                              child: _buildCustomerOption('Poongodi', false),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: _buildCustomerOption('Vikasini', false),
                            ),
                            SizedBox(width: 56), // Space for alignment
                          ],
                        ),
                        SizedBox(height: 16),

                        // Fourth Row
                        Row(
                          children: [
                            Expanded(
                              child: _buildCustomerOption('Sunitha', false),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: _buildCustomerOption('Supriyahh', false),
                            ),
                            SizedBox(width: 56), // Space for alignment
                          ],
                        ),

                        Spacer(),

                        // Compose Reminder Section
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Compose Reminder',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 16),

                              Text(
                                'To: Ramya.K',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 4),

                              Text(
                                'Bookings Id:Us123v7',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 8),

                              Text(
                                'Thank You For Your Booking Request.Yes, I Am Available On 12/07/2024 At 3pm For Your Wedding Decoration.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                  height: 1.4,
                                ),
                              ),
                              SizedBox(height: 20),

                              // Buttons
                              Row(
                                children: [
                                  Container(
                                    height: 44,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFE7C0),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Send Reminder',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    height: 44,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey.shade500,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
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
              ),
            ),
          ),

          // Divider
          Container(width: 1, color: Colors.grey[300]),

          // Right Section - Notification Preview
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notification Preview',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Message Preview
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFE7C0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Amitkumat,',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Thank You For Your Booking Request.Yes, I Am Available On 12/07/2024 At 3pm For Your Wedding Decoration.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            height: 1.4,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '- Flower Decoration (Lalitha)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

                  // Delivery Options
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(0xFFE6D73A),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'SMS',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE6D73A),
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'EMAIL',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE6D73A),
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'IN - APP NOTIFICATION',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomerOption(String name, bool isSelected) {
    return Container(
      height: 44,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFE6D73A) : Colors.transparent,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : Colors.transparent,
              border: Border.all(
                color: isSelected ? Colors.transparent : Colors.grey[400]!,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubDash({
    required String txt,
    required String subtxt,
    required String imgPath,
  }) {
    return Container(
      height: 500,
      color: Color(0xffEFE7C0),
      child: Column(
        children: [
          // Header Section
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side - EARNINGS title
                Text(
                  txt,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFD4BB26), // Golden brown color
                    letterSpacing: 2.0,
                  ),
                ),
                // Right side - Navigation dots and options
                Row(
                  children: [
                    // Vote dot
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFF8B5CF6), // Purple color
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Text(
                      'Vote',
                      style: TextStyle(fontSize: 12, color: Color(0xFF8B5CF6)),
                    ),
                    SizedBox(width: 16),
                    // Star dot
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFD4BB26), // Yellow color
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Text(
                      'Star',
                      style: TextStyle(fontSize: 12, color: Color(0xFFD4BB26)),
                    ),
                    SizedBox(width: 16),
                    // Calorie dot
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFF10B981), // Green color
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Text(
                      'Calorie',
                      style: TextStyle(fontSize: 12, color: Color(0xFF10B981)),
                    ),
                    SizedBox(width: 16),
                    // This month dropdown
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xFF8B5CF6), width: 1),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 14,
                            color: Color(0xFF8B5CF6),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'This month',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF8B5CF6),
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 16,
                            color: Color(0xFF8B5CF6),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                    // More options
                    Icon(Icons.more_horiz, color: Color(0xFF9CA3AF), size: 20),
                  ],
                ),
              ],
            ),
          ),

          // Divider line
          Container(
            height: 1,
            margin: EdgeInsets.symmetric(horizontal: 20),
            color: Color(0xFFD1C7B8),
          ),

          SizedBox(height: 20),

          // Main content area
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Large yellow section
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Color(0xFFE4C441),
                    child: Image.asset(imgPath, fit: BoxFit.cover),
                  ),

                  SizedBox(height: 24),

                  // Earnings text section
                  Text(
                    subtxt,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000), // Dark gray
                    ),
                  ),

                  SizedBox(height: 12),

                  Text(
                    'Minim dolor in amet nulla laboris enim dolore consequat...',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF000000), // Medium gray
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
