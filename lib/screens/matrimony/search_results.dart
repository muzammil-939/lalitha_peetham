import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout_2.dart';

class MessagingInterfaceContainer extends StatelessWidget {
  const MessagingInterfaceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MatriPageLayoutTwo(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFF8F8F8),
        child: Column(
          children: [
            // Top Navigation
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    'All Request',
                    style: TextStyle(
                      color: Color(0xFFFF8C42),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 60),
                  Text(
                    'Filtered Out',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Filter Panel
                  Container(
                    width: 180,
                    color: Colors.white,
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFFF8C42),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              'FILTER',
                              style: TextStyle(
                                color: Color(0xFFFF8C42),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),

                        // Filter Options
                        _buildFilterOption('Blue Tick Members', true),
                        _buildFilterOption('Blue Tick Members', false),
                        _buildFilterOption('Super Connectors', false),
                        _buildFilterOption('Premium Members', false),
                        _buildFilterOption('Members Online Now', false),
                        _buildFilterOption('Members With Photos', false),
                      ],
                    ),
                  ),

                  // Right Content Area
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 25,
                      ),
                      child: Column(
                        children: [
                          // First User Card
                          _buildUserCard(
                            profileImage:
                                'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
                            timeAgo: 'Few Hours Ago',
                            showMessage: false,
                            message: '',
                          ),

                          SizedBox(height: 25),

                          // Second User Card
                          _buildUserCard(
                            profileImage:
                                'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face',
                            timeAgo: 'Few Hours Ago',
                            showMessage: true,
                            message:
                                'Shivakumar Has Sent You A Message. In The Interest Of Our Premium Members, We Allow Only Premium Users To Read Messages.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterOption(String text, bool isSelected) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Color(0xFFFF8C42) : Colors.grey[400]!,
                width: 2,
              ),
            ),
            child:
                isSelected
                    ? Center(
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFF8C42),
                        ),
                      ),
                    )
                    : null,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserCard({
    required String profileImage,
    required String timeAgo,
    required bool showMessage,
    required String message,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xFFF5F1E8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Header with profile and time
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFFF6B6B), Color(0xFFFF8C42)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.5),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                timeAgo,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          SizedBox(height: 25),

          // Upgrade message container
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFFF8C42),
                width: 2,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(4),
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                if (showMessage && message.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      message,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 11,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'UPGRADE NOW',
                      style: TextStyle(
                        color: Color(0xFFFF8C42),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.info_outline,
                      color: Color(0xFFFF8C42),
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          // Action buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF8C42),
                ),
                child: Icon(Icons.check, color: Colors.white, size: 20),
              ),
              SizedBox(width: 8),
              Text(
                'Accept',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 35),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[400],
                ),
                child: Icon(Icons.close, color: Colors.white, size: 20),
              ),
              SizedBox(width: 8),
              Text(
                'Decline',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
