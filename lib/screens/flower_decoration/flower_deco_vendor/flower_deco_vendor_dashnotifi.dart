import 'package:flutter/material.dart';

class NotificationsContainer extends StatelessWidget {
  const NotificationsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(color: const Color(0xFFEFE7C0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'NOTIFICATIONS',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFCC901C), // Golden/amber color
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32.0),

          // Notification items
          _buildNotificationItem(
            'New Booking Request From Ramya For Wedding On 12/07/2025, 7.15pm.',
          ),
          _buildDivider(),

          _buildNotificationItem(
            'Raja Has Confirmed The Decoration Service For 21/07/2025, 8.45pm.',
          ),
          _buildDivider(),

          _buildNotificationItem(
            'Requested To Reschedule The Decoration To 21/07/2025, 8.45pm. Please Respond.',
          ),
          _buildDivider(),

          _buildNotificationItem(
            'Sunit Has Cancelled The Booking Scheduled For 21/07/2025, 8.45pm.',
          ),
          _buildDivider(),

          _buildNotificationItem(
            'New Message From Priya. Tap To View And Respond.',
          ),
          _buildDivider(),

          // Last notification with timestamp
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Referral Bonus: \$200 Added To Your Wallet.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: const Color(0xFF2C2C2C),
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
                ),
              ),
              Text(
                '50 Minutes Ago',
                style: TextStyle(
                  fontSize: 13.0,
                  color: const Color(0xFF666666),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15.0,
          color: const Color(0xFF000000),
          fontWeight: FontWeight.w500,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(height: 1.0, color: const Color(0xFF000000));
  }
}
