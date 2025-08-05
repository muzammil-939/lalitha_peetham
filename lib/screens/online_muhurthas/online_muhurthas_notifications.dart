import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_more_wid.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class OnlineMuhurthasNotifications extends StatelessWidget {
  const OnlineMuhurthasNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    double horizontalPadding = ResponsiveHelper.isMobile(context)
        ? 16
        : ResponsiveHelper.isTablet(context)
            ? 40
            : 200;

    double titleFontSize = ResponsiveHelper.isMobile(context)
        ? 20
        : ResponsiveHelper.isTablet(context)
            ? 22
            : 24;

    return OnlineMuhurthasLayout(
      child: Column(
        children: [
          // Tab bar section
          OnlineMuhurthasMoreWid(activeTab: "Notifications"),

          Container(
            width: double.infinity,
            height: ResponsiveHelper.screenHeight(context) * 0.75,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title section
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Notifications list
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    children: [
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Booking Confirmation",
                        subtitle:
                            "Your booking for the 'Marriage Muhurtam' service on November 15th at 10:00 AM has been confirmed.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.schedule,
                        title: "Consultation Reminder",
                        subtitle:
                            "Don't forget your consultation with Astrologer Sharma scheduled for tomorrow at 3:00 PM.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.description,
                        title: "Report Update",
                        subtitle:
                            "Astrologer Verma has updated your 'Career Muhurtam' report with new insights.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.person_add,
                        title: "New Astrologer",
                        subtitle:
                            "A new astrologer, Ms. Kapoor, specializing in 'Relationship Muhurtam' has joined our platform.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Payment Confirmation",
                        subtitle:
                            "Your payment for the 'Property Muhurtam' service has been successfully processed.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.public,
                        title: "Service Update",
                        subtitle:
                            "The 'Travel Muhurtam' service is now available with more astrologers and options.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Feedback Received",
                        subtitle:
                            "Your feedback on the 'Business Muhurtam' consultation has been received. Thank you!",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.calendar_today,
                        title: "New Feature",
                        subtitle:
                            "A new feature, 'Muhurtam Calendar', is now available to help you plan your auspicious events.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.check_circle_outline,
                        title: "Account Update",
                        subtitle:
                            "Your account details have been successfully updated.",
                        context: context,
                      ),
                      const SizedBox(height: 12),
                      _buildNotificationItem(
                        icon: Icons.person_add,
                        title: "Astrologer Expansion",
                        subtitle:
                            "We've added more astrologers specializing in 'Education Muhurtam'.",
                        context: context,
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

  Widget _buildNotificationItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required BuildContext context,
  }) {
    double titleFontSize = ResponsiveHelper.isMobile(context) ? 14 : 16;
    double subtitleFontSize = ResponsiveHelper.isMobile(context) ? 12 : 14;
    double iconSize = ResponsiveHelper.isMobile(context) ? 18 : 20;
    double iconContainerSize = ResponsiveHelper.isMobile(context) ? 36 : 40;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: iconContainerSize,
            height: iconContainerSize,
            decoration: BoxDecoration(
              color: const Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.white, size: iconSize),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: subtitleFontSize,
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
