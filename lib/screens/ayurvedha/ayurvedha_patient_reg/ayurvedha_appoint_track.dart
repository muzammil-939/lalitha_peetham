import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaAppointTrack extends StatefulWidget {
  const AyurvedhaAppointTrack({super.key});

  @override
  AyurvedhaAppointTrackState createState() => AyurvedhaAppointTrackState();
}

class AyurvedhaAppointTrackState extends State<AyurvedhaAppointTrack> {
  
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(200, 50, 200, 100),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header breadcrumb
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Empty space for alignment
                  const SizedBox(width: 100),
                  
                  // Breadcrumb in center  
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.home, size: 16, color: Colors.black),
                        Text(' / ', style: TextStyle(color: Colors.black, fontSize: 14)),
                        Text('AYURVEDA CONSULTANCY', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                        Text(' // ', style: TextStyle(color: Colors.black, fontSize: 14)),
                        Text('APPOINTMENT TRACKING', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  
                  // Right side icons
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home, size: 24, color: Colors.black),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.notifications, size: 24, color: Colors.black),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD4BB26),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_bag, size: 20, color: Colors.black),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              
              const SizedBox(height: 40),
              
              // User profile section
              Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/user_profile.png'), // Replace with your image path
                    backgroundColor: Colors.grey[300],
                  ),
                  const SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'RAJKUMAR.K',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'USER ID : 2345671',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'OPHTHALMOLOGY CASE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 40),
              
              // Timeline section
              Timeline(),
            ],
          ),
        ),
      ),
    );
  }
}

class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          // Appointment Booked
          TimelineItem(
            isCompleted: true,
            title: 'APPOINTMENT BOOKED',
            subtitle: 'Date: Tue, 18th June \'25 - 🕚 11:35 AM',
            description: 'Your Appointment Has Been Successfully Booked With Dr. Ponvannan',
            isLast: false,
          ),
          
          // Doctor Confirmation
          TimelineItem(
            isCompleted: true,
            title: 'DOCTOR CONFIRMATION',
            subtitle: 'Date: Tue, 18th June \'25 - 🕚 12:00 PM',
            description: 'Dr. Ponvannan Has Confirmed Your Consultation. Please Check Your Dashboard For Video Call Link And',
            isLast: false,
          ),
          
          // Consultation Reminder
          TimelineItem(
            isCompleted: true,
            title: 'CONSULTATION REMINDER',
            subtitle: 'Scheduled: Thu, 20th June \'25 - 🕚 4:00 PM',
            description: 'Reminder: Your Consultation Is Scheduled Tomorrow At 4:00 PM.',
            isLast: false,
          ),
          
          // Consultation Started
          TimelineItem(
            isCompleted: true,
            title: 'CONSULTATION STARTED',
            subtitle: 'Thu, 20th June \'25 - 🕚 4:00 PM',
            description: 'Video Consultation With Dr. [Name] Has Started',
            isLast: false,
          ),
          
          // Consultation Completed
          TimelineItem(
            isCompleted: true,
            title: 'CONSULTATION COMPLETED',
            subtitle: 'Thu, 20th June \'25 - 🕚 4:45 PM',
            description: '✅ Your Consultation Is Completed. Please Check Your Prescription Or Advice Under \'Consultation Hist',
            isLast: true,
            showCheckmark: true,
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Handle track appointment action
                  context.go('/ayurvedha_call_request');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF539834),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: const Text(
                'SEE CALL REQUEST',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimelineItem extends StatelessWidget {
  final bool isCompleted;
  final String title;
  final String subtitle;
  final String description;
  final bool isLast;
  final bool showCheckmark;

  const TimelineItem({
    Key? key,
    required this.isCompleted,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.isLast,
    this.showCheckmark = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline indicator
        Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: isCompleted ? const Color(0xFFD4BB26) : Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                color: isCompleted ? Colors.white : Colors.grey[600],
                size: 20,
              ),
            ),
            if (!isLast)
              Container(
                width: 1,
                height: 80,
                color: Colors.black,
              ),
          ],
        ),
        
        const SizedBox(width: 20),
        
        // Content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: showCheckmark ? Colors.black : Colors.black,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}