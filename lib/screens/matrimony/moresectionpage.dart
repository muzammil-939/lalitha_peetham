import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

class Moresectionpage extends StatefulWidget {
  const Moresectionpage({super.key});

  @override
  State<Moresectionpage> createState() => _MoresectionpageState();
}

class _MoresectionpageState extends State<Moresectionpage> {
  bool includeDeclinedNotifications = false;
  String selectedFilter = 'All Notifications';
  int currentPage = 1;
  
  final List<NotificationItem> notifications = [
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Interest',
      time: 'Few Minutes Ago',
      profileImage: 'assets/images/profile1.jpg', // Replace with actual asset path
    ),
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Interest',
      time: 'Few Minutes Ago',
      profileImage: 'assets/images/profile2.jpg', // Replace with actual asset path
    ),
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Interest',
      time: 'Few Hours Ago',
      profileImage: 'assets/images/profile3.jpg', // Replace with actual asset path
    ),
    NotificationItem(
      name: 'Yuvarajan L',
      message: 'Has Sent You To Interest',
      time: 'Yesterday',
      profileImage: 'assets/images/profile4.jpg', // Replace with actual asset path
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MatriPageLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            
            // Header Section
            Text(
              'NOTIFICATIONS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
                letterSpacing: 1.2,
              ),
            ),
            
            const SizedBox(height: 30),
            
            // Include Declined Notifications Toggle
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: const Color(0xFFF5E6A3), // Light yellow background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    'INCLUDE DECLINED NOTIFICATIONS',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.brown[700],
                      letterSpacing: 0.5,
                    ),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.8,
                    child: Checkbox(
                      value: includeDeclinedNotifications,
                      onChanged: (value) {
                        setState(() {
                          includeDeclinedNotifications = value ?? false;
                        });
                      },
                      activeColor: Colors.orange[700],
                      checkColor: Colors.white,
                      side: BorderSide(
                        color: Colors.brown[400]!,
                        width: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Notifications Card
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF5E6A3), // Light yellow background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  // All Notifications Dropdown Header
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.orange[200]!,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          selectedFilter.toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange[700],
                            letterSpacing: 0.5,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.orange[700],
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  
                  // Notifications List
                  ...notifications.asMap().entries.map((entry) {
                    int index = entry.key;
                    NotificationItem notification = entry.value;
                    bool isLast = index == notifications.length - 1;
                    
                    return Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: isLast ? null : Border(
                          bottom: BorderSide(
                            color: Colors.orange[200]!,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          // Profile Image
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[300],
                            child: ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey[400],
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          
                          const SizedBox(width: 15),
                          
                          // Notification Content
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notification.name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.orange[700],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  notification.message,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.brown[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Timestamp
                          Text(
                            notification.time,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.brown[500],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  
                  // Pagination inside the card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.orange[200]!,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Previous button
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.grey[600],
                            size: 20,
                          ),
                        ),
                        
                        const SizedBox(width: 8),
                        
                        // Page numbers
                        ...List.generate(5, (index) {
                          int pageNumber = index + 1;
                          bool isSelected = pageNumber == currentPage;
                          
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentPage = pageNumber;
                                });
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: isSelected ? Colors.orange[700] : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    pageNumber == 4 ? '...' : pageNumber == 5 ? '10' : pageNumber.toString(),
                                    style: TextStyle(
                                      color: isSelected ? Colors.white : Colors.grey[700],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                        
                        const SizedBox(width: 8),
                        
                        // Next button
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.grey[600],
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
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