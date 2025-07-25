import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

import 'online_muhurthas_more_wid.dart';

class OnlineMuhurthasCallRequest extends StatelessWidget {
  const OnlineMuhurthasCallRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Column(
        children: [
          OnlineMuhurthasMoreWid(activeTab: "Call Request"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
            child: Container(
              width: double.infinity,
              height: 600,
              color: Colors.white,

              child: Row(
                children: [
                  // Left Section - Video Consultation
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            'Video Consultation',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 32),

                          // Video Container
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                children: [
                                  // Phone Frame
                                  Center(
                                    child: Container(
                                      width: 200,
                                      height: 400,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              // Status bar
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 8,
                                                    ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 4,
                                                          height: 4,
                                                          decoration:
                                                              BoxDecoration(
                                                                color:
                                                                    Colors
                                                                        .black,
                                                                shape:
                                                                    BoxShape
                                                                        .circle,
                                                              ),
                                                        ),
                                                        SizedBox(width: 2),
                                                        Container(
                                                          width: 4,
                                                          height: 4,
                                                          decoration:
                                                              BoxDecoration(
                                                                color:
                                                                    Colors
                                                                        .black,
                                                                shape:
                                                                    BoxShape
                                                                        .circle,
                                                              ),
                                                        ),
                                                        SizedBox(width: 2),
                                                        Container(
                                                          width: 4,
                                                          height: 4,
                                                          decoration:
                                                              BoxDecoration(
                                                                color:
                                                                    Colors
                                                                        .black,
                                                                shape:
                                                                    BoxShape
                                                                        .circle,
                                                              ),
                                                        ),
                                                        SizedBox(width: 2),
                                                        Container(
                                                          width: 4,
                                                          height: 4,
                                                          decoration:
                                                              BoxDecoration(
                                                                color:
                                                                    Colors
                                                                        .black,
                                                                shape:
                                                                    BoxShape
                                                                        .circle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .signal_cellular_4_bar,
                                                          size: 12,
                                                          color: Colors.black,
                                                        ),
                                                        SizedBox(width: 2),
                                                        Icon(
                                                          Icons.wifi,
                                                          size: 12,
                                                          color: Colors.black,
                                                        ),
                                                        SizedBox(width: 2),
                                                        Icon(
                                                          Icons.battery_full,
                                                          size: 12,
                                                          color: Colors.black,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // Video content area
                                              Expanded(
                                                child: Container(
                                                  margin: EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE8E8E8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      // Person image placeholder
                                                      Center(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              width: 80,
                                                              height: 80,
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    Colors
                                                                        .brown[200],
                                                                shape:
                                                                    BoxShape
                                                                        .circle,
                                                              ),
                                                              child: Icon(
                                                                Icons.person,
                                                                size: 40,
                                                                color:
                                                                    Colors
                                                                        .brown[600],
                                                              ),
                                                            ),
                                                            SizedBox(height: 8),
                                                            Container(
                                                              width: 60,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    Colors
                                                                        .grey[300],
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      // Play button overlay
                                                      Center(
                                                        child: Container(
                                                          width: 60,
                                                          height: 60,
                                                          decoration:
                                                              BoxDecoration(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                      0.7,
                                                                    ),
                                                                shape:
                                                                    BoxShape
                                                                        .circle,
                                                              ),
                                                          child: Icon(
                                                            Icons.play_arrow,
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),

                                                      // Green call button at bottom
                                                      Positioned(
                                                        bottom: 20,
                                                        left: 0,
                                                        right: 0,
                                                        child: Center(
                                                          child: Container(
                                                            width: 50,
                                                            height: 50,
                                                            decoration:
                                                                BoxDecoration(
                                                                  color:
                                                                      Colors
                                                                          .green,
                                                                  shape:
                                                                      BoxShape
                                                                          .circle,
                                                                ),
                                                            child: Icon(
                                                              Icons.call,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 24),

                          // Bottom buttons
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5E6A3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Mute',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5E6A3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Share Screen',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5E6A3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Unmute',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5E6A3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Chat',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Right Section - Consultation Details
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color(0xFFFAFAFA),
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            'Consultation Details',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 32),

                          // Astrologer info
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Astrologer',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    'Rohan',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Text(
                                    'Sharma',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Topic',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    'Career Guidance',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 32),

                          // Duration and Date
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Duration',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Text(
                                    'minutes',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    'July 20, 2024',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 24),

                          // Time
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Time',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                '10:00 AM',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),

                          // Timer Section
                          Text(
                            'Timer',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 24),

                          // Timer display
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD4AF37),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    '00',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD4AF37),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    '25',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD4AF37),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    '30',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),

                          // Timer labels
                          Row(
                            children: [
                              Container(
                                width: 60,
                                child: Center(
                                  child: Text(
                                    'Hours',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                width: 60,
                                child: Center(
                                  child: Text(
                                    'Minutes',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                width: 60,
                                child: Center(
                                  child: Text(
                                    'Seconds',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
