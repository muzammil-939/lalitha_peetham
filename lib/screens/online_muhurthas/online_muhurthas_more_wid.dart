import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';



class OnlineMuhurthasMoreWid extends StatefulWidget {
  final String activeTab;

  const OnlineMuhurthasMoreWid({
    super.key,
    required this.activeTab,
  });

  @override
  State<OnlineMuhurthasMoreWid> createState() =>
      _OnlineMuhurthasMoreWidState();
}

class _OnlineMuhurthasMoreWidState extends State<OnlineMuhurthasMoreWid> {
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // Adjust padding
    final horizontalPadding = isMobile
        ? 16.0
        : isTablet
            ? 40.0
            : 150.0;

    // Adjust spacing between tabs
    final tabSpacing = isMobile
        ? 10.0
        : isTablet
            ? 20.0
            : 50.0;

    // Adjust font size
    final fontSize = isMobile
        ? 14.0
        : isTablet
            ? 16.0
            : 20.0;

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildTab("Reminders", widget.activeTab == "Reminders", '/online_muhurthas_reminders', fontSize),
            SizedBox(width: tabSpacing),
            _buildTab("Notifications", widget.activeTab == "Notifications", '/online_muhurthas_notifications', fontSize),
            SizedBox(width: tabSpacing),
            _buildTab("Messages", widget.activeTab == "Messages", '/online_muhurthas_messages', fontSize),
            SizedBox(width: tabSpacing),
            _buildTab("Call Request", widget.activeTab == "Call Request", '/online_muhurthas_call_request', fontSize),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, bool isActive, String path, double fontSize) {
    return GestureDetector(
      onTap: () => context.go(path),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: isActive ? Colors.black : Colors.grey[600],
            ),
          ),
          SizedBox(height: 4),
          if (isActive)
            Container(
              height: 3,
              width: title.length * (fontSize * 0.6),
              decoration: BoxDecoration(
                color: Color(0xFFD4AF37),
                borderRadius: BorderRadius.circular(1),
              ),
            ),
        ],
      ),
    );
  }
}
