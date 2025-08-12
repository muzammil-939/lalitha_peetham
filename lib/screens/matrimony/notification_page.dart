import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool includeDeclinedNotifications = false;
  String selectedFilter = 'All Notifications';
  int currentPage = 1;

  final List<NotificationItem> notifications = [
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Interest',
      time: 'Few Minutes Ago',
      profileImage: 'assets/images/profile1.jpg',
    ),
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Interest',
      time: 'Few Minutes Ago',
      profileImage: 'assets/images/profile2.jpg',
    ),
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Interest',
      time: 'Few Hours Ago',
      profileImage: 'assets/images/profile3.jpg',
    ),
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Intrest',
      time: 'Yesterday',
      profileImage: 'assets/images/profile4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // Responsive values (tweak as needed)
    final horizontalPadding = isMobile ? 12.0 : isTablet ? 28.0 : 80.0;
    final topSpacing = isMobile ? 18.0 : 30.0;
    final headerFontSize = isMobile ? 20.0 : isTablet ? 26.0 : 30.0;
    final cardCornerRadius = isMobile ? 8.0 : 10.0;
    final cardInnerPadding = isMobile ? 12.0 : isTablet ? 16.0 : 20.0;
    final sectionSpacing = isMobile ? 16.0 : 20.0;
    final titleFont = isMobile ? 14.0 : 16.0;
    final subtitleFont = isMobile ? 12.0 : 14.0;
    final smallFont = isMobile ? 11.0 : 12.0;
    final avatarRadius = isMobile ? 22.0 : 25.0;
    final avatarIconSize = isMobile ? 26.0 : 30.0;
    final gapBetweenAvatarAndText = isMobile ? 12.0 : 15.0;
    final checkboxScale = isMobile ? 0.85 : 1.0;
    final iconSize = isMobile ? 18.0 : 20.0;
    final paginationButtonSize = isMobile ? 32.0 : 36.0;
    final paginationFont = isMobile ? 12.0 : 14.0;
    final borderColor = Colors.orange[200]!;

    return MatriPageLayout(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: topSpacing),

            // Header
            Text(
              'NOTIFICATIONS',
              style: TextStyle(
                fontSize: headerFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
                letterSpacing: 1.2,
              ),
            ),

            SizedBox(height: sectionSpacing),

            // Include Declined Notifications Toggle
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: cardInnerPadding,
                vertical: cardInnerPadding - 4,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF5E6A3),
                borderRadius: BorderRadius.circular(cardCornerRadius),
              ),
              child: Row(
                children: [
                  Text(
                    'INCLUDE DECLINED NOTIFICATIONS',
                    style: TextStyle(
                      fontSize: titleFont,
                      fontWeight: FontWeight.w600,
                      color: Colors.brown[700],
                      letterSpacing: 0.5,
                    ),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: checkboxScale,
                    child: Checkbox(
                      value: includeDeclinedNotifications,
                      onChanged: (value) {
                        setState(() {
                          includeDeclinedNotifications = value ?? false;
                        });
                      },
                      activeColor: Colors.orange[700],
                      checkColor: Colors.white,
                      side:
                          BorderSide(color: Colors.brown[400]!, width: 1.2),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: sectionSpacing),

            // Notifications Card
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF5E6A3),
                borderRadius: BorderRadius.circular(cardCornerRadius),
              ),
              child: Column(
                children: [
                  // Header / Dropdown row
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: cardInnerPadding,
                      vertical: cardInnerPadding,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: borderColor, width: 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          selectedFilter.toUpperCase(),
                          style: TextStyle(
                            fontSize: titleFont,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange[700],
                            letterSpacing: 0.5,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.orange[700],
                          size: iconSize,
                        ),
                      ],
                    ),
                  ),

                  // Notifications list entries
                  ...notifications.asMap().entries.map((entry) {
                    final index = entry.key;
                    final notification = entry.value;
                    final isLast = index == notifications.length - 1;

                    return Container(
                      padding: EdgeInsets.all(cardInnerPadding),
                      decoration: BoxDecoration(
                        border: isLast
                            ? null
                            : Border(
                                bottom: BorderSide(color: borderColor, width: 1),
                              ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Avatar
                          CircleAvatar(
                            radius: avatarRadius,
                            backgroundColor: Colors.grey[300],
                            child: ClipOval(
                              child: Container(
                                width: avatarRadius * 2,
                                height: avatarRadius * 2,
                                color: Colors.grey[400],
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: avatarIconSize,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: gapBetweenAvatarAndText),

                          // Content
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notification.name,
                                  style: TextStyle(
                                    fontSize: titleFont,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.orange[700],
                                  ),
                                ),
                                SizedBox(height: isMobile ? 4 : 6),
                                Text(
                                  notification.message,
                                  style: TextStyle(
                                    fontSize: subtitleFont,
                                    color: Colors.brown[600],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 12),

                          // Time
                          Text(
                            notification.time,
                            style: TextStyle(
                              fontSize: smallFont,
                              color: Colors.brown[500],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),

                  // Pagination
                  Container(
                    padding: EdgeInsets.all(cardInnerPadding),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: borderColor, width: 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Prev
                        Container(
                          width: paginationButtonSize,
                          height: paginationButtonSize,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.grey[600],
                            size: iconSize,
                          ),
                        ),

                        SizedBox(width: isMobile ? 6 : 8),

                        // Page numbers (example)
                        ...List.generate(5, (idx) {
                          final pageNumber = idx + 1;
                          final isSelected = pageNumber == currentPage;
                          final displayText = pageNumber == 4
                              ? '...'
                              : pageNumber == 5
                                  ? '10'
                                  : pageNumber.toString();

                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: isMobile ? 2 : 4),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentPage = pageNumber;
                                });
                              },
                              child: Container(
                                width: paginationButtonSize,
                                height: paginationButtonSize,
                                decoration: BoxDecoration(
                                  color: isSelected ? Colors.orange[700] : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Text(
                                    displayText,
                                    style: TextStyle(
                                      color: isSelected ? Colors.white : Colors.grey[700],
                                      fontWeight: FontWeight.w600,
                                      fontSize: paginationFont,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),

                        SizedBox(width: isMobile ? 6 : 8),

                        // Next
                        Container(
                          width: paginationButtonSize,
                          height: paginationButtonSize,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.grey[600],
                            size: iconSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: isMobile ? 24 : 40),
          ],
        ),
      ),
    );
  }
}

class NotificationItem {
  final String name;
  final String message;
  final String time;
  final String profileImage;

  NotificationItem({
    required this.name,
    required this.message,
    required this.time,
    required this.profileImage,
  });
}
