import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_layout.dart';

class FlowerDecoVendorNotiSettings extends StatefulWidget {
  const FlowerDecoVendorNotiSettings({super.key});

  @override
  State<FlowerDecoVendorNotiSettings> createState() =>
      _FlowerDecoVendorNotiSettingsState();
}

class _FlowerDecoVendorNotiSettingsState
    extends State<FlowerDecoVendorNotiSettings> {
  bool smsNotifications = true;
  bool emailNotifications = true;
  bool appNotifications = true;

  @override
  Widget build(BuildContext context) {
    return FlowerDecoVendorLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notification Preferences',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              // Section Title
              const Text(
                'Notification Preferences',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 32),

              // SMS Section
              const Text(
                'SMS',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 16),

              // SMS Notification Card
              Container(
                width: 800,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFE7BA),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'SMS Notifications',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Get SMS notifications for new orders, cancellations, and other important updates.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Transform.scale(
                      scale: 1.2,
                      child: Switch(
                        value: smsNotifications,
                        onChanged: (value) {
                          setState(() {
                            smsNotifications = value;
                          });
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.white38,
                        inactiveThumbColor: Colors.white60,
                        inactiveTrackColor: Colors.white24,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Email Section
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 16),

              // Email Notification Card
              Container(
                width: 800,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email Notifications',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Receive email notifications for order confirmations, payment receipts, and promotional offers.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Transform.scale(
                      scale: 1.2,
                      child: Switch(
                        value: emailNotifications,
                        onChanged: (value) {
                          setState(() {
                            emailNotifications = value;
                          });
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.white38,
                        inactiveThumbColor: Colors.white60,
                        inactiveTrackColor: Colors.white24,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // App Section
              const Text(
                'App',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 16),

              // App Notification Card
              Container(
                width: 800,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'App Notifications',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Enable app notifications to stay informed about new messages, customer inquiries, and special announcements.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Transform.scale(
                      scale: 1.2,
                      child: Switch(
                        value: appNotifications,
                        onChanged: (value) {
                          setState(() {
                            appNotifications = value;
                          });
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.white38,
                        inactiveThumbColor: Colors.white60,
                        inactiveTrackColor: Colors.white24,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
