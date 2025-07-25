import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnlineMuhurthasMoreWid extends StatefulWidget {
  final String
  activeTab; // Add this parameter to specify which tab should be active

  const OnlineMuhurthasMoreWid({
    super.key,
    required this.activeTab, // Make it required
  });

  @override
  State<OnlineMuhurthasMoreWid> createState() => _OnlineMuhurthasMoreWidState();
}

class _OnlineMuhurthasMoreWidState extends State<OnlineMuhurthasMoreWid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTab(
            "Reminders",
            widget.activeTab == "Reminders",
            '/online_muhurthas_reminders',
          ),
          SizedBox(width: 40),
          _buildTab(
            "Notifications",
            widget.activeTab == "Notifications",
            '/online_muhurthas_notifications',
          ),
          SizedBox(width: 40),
          _buildTab(
            "Messages",
            widget.activeTab == "Messages",
            '/online_muhurthas_messages',
          ),
          SizedBox(width: 40),
          _buildTab(
            "Call Request",
            widget.activeTab == "Call Request",
            '/online_muhurthas_call_request',
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, bool isActive, String path) {
    return GestureDetector(
      onTap: () => context.go(path),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: isActive ? Colors.black : Colors.grey[600],
            ),
          ),
          SizedBox(height: 4),
          if (isActive)
            Container(
              height: 3,
              width: title.length * 10.0,
              decoration: BoxDecoration(
                color: Color(0xFFD4AF37), // Golden color for active tab
                borderRadius: BorderRadius.circular(1),
              ),
            ),
        ],
      ),
    );
  }
}
