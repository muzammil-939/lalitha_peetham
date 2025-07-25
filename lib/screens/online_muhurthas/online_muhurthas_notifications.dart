import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

import 'online_muhurthas_more_wid.dart';

class OnlineMuhurthasNotifications extends StatelessWidget {
  const OnlineMuhurthasNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Column(
        children: [
          // Tab bar section
          OnlineMuhurthasMoreWid(activeTab: "Notifications"),
          //_
          Container(
            width: double.infinity,
            height: 600,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title section
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 16),

                // Notifications list
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Booking Confirmation",
                        subtitle:
                            "Your booking for the 'Marriage Muhurtam' service on November 15th at 10:00 AM has been confirmed.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.schedule,
                        title: "Consultation Reminder",
                        subtitle:
                            "Don't forget your consultation with Astrologer Sharma scheduled for tomorrow at 3:00 PM.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.description,
                        title: "Report Update",
                        subtitle:
                            "Astrologer Verma has updated your 'Career Muhurtam' report with new insights.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.person_add,
                        title: "New Astrologer",
                        subtitle:
                            "A new astrologer, Ms. Kapoor, specializing in 'Relationship Muhurtam' has joined our platform.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Payment Confirmation",
                        subtitle:
                            "Your payment for the 'Property Muhurtam' service has been successfully processed.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.public,
                        title: "Service Update",
                        subtitle:
                            "The 'Travel Muhurtam' service is now available with more astrologers and options.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Feedback Received",
                        subtitle:
                            "Your feedback on the 'Business Muhurtam' consultation has been received. Thank you!",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.calendar_today,
                        title: "New Feature",
                        subtitle:
                            "A new feature, 'Muhurtam Calendar', is now available to help you plan your auspicious events.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Account Update",
                        subtitle:
                            "Your account details have been successfully updated.",
                      ),
                      SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.person_add,
                        title: "Astrologer Expansion",
                        subtitle:
                            "We've added more astrologers specializing in 'Education Muhurtam'.",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, bool isActive) {
    return Column(
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
            width: title.length * 9.0,
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37), // Golden color for active tab
              borderRadius: BorderRadius.circular(1),
            ),
          ),
      ],
    );
  }

  Widget _buildNotificationItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37), // Golden background for icon
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
