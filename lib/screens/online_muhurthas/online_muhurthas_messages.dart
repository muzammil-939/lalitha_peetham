import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

import 'online_muhurthas_more_wid.dart';

class OnlineMuhurthasMessages extends StatefulWidget {
  @override
  _OnlineMuhurthasMessagesState createState() =>
      _OnlineMuhurthasMessagesState();
}

class _OnlineMuhurthasMessagesState extends State<OnlineMuhurthasMessages> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return OnlineMuhurthasLayout(
      child: Column(
        children: [
          OnlineMuhurthasMoreWid(activeTab: "Messages"),
          SizedBox(
            width: screenWidth * 0.8,
            height: screenHeight,
            child: Row(
              children: [
                // Left sidebar
                Container(
                  width: 320,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      // Search bar
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F3F4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16, right: 8),
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xFF9AA0A6),
                                  size: 18,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _searchController,
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                      color: Color(0xFF9AA0A6),
                                      fontSize: 14,
                                    ),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF202124),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Chat list
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            _buildChatItem(
                              'Astrologer Sharma',
                              '12:30 PM',
                              'assets/sharma.jpg',
                              isActive: true,
                            ),
                            _buildChatItem(
                              'Astrologer Verma',
                              '11:00 AM',
                              'assets/verma.jpg',
                            ),
                            _buildChatItem(
                              'Astrologer Kapoor',
                              'Yesterday',
                              'assets/kapoor.jpg',
                            ),
                            _buildChatItem(
                              'Astrologer Singh',
                              '2 days ago',
                              'assets/singh.jpg',
                            ),
                            _buildChatItem(
                              'Astrologer Joshi',
                              '3 days ago',
                              'assets/joshi.jpg',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Main chat area
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        // Chat header
                        Container(
                          height: 80,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                            ),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Color(0xFFE8F0FE),
                                child: Text(
                                  'AS',
                                  style: TextStyle(
                                    color: Color(0xFF1976D2),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Astrologer Sharma',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF202124),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'Astrologer Sharma',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF5F6368),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Chat messages
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(24),
                            child: Column(
                              children: [
                                Spacer(),
                                // First message from astrologer
                                _buildMessage(
                                  "Hello, I've reviewed your birth chart and have some insights. When would you be available for a detailed discussion?",
                                  isFromUser: false,
                                  showAvatar: true,
                                ),
                                SizedBox(height: 16),
                                // User reply
                                _buildMessage("Hi", isFromUser: true),
                                SizedBox(height: 16),
                                // Second message from astrologer
                                _buildMessage(
                                  "Yes, 2 PM tomorrow works perfectly. We can connect then. Please share any specific questions you have beforehand.",
                                  isFromUser: false,
                                  showAvatar: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Message input
                        Container(
                          padding: EdgeInsets.all(24),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller: _messageController,
                                          decoration: InputDecoration(
                                            hintText: 'Write a message',
                                            hintStyle: TextStyle(
                                              color: Color(0xFF9AA0A6),
                                              fontSize: 14,
                                            ),
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                  vertical: 14,
                                                ),
                                          ),
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF202124),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 12),
                                        child: Icon(
                                          Icons.attach_file,
                                          color: Color(0xFF9AA0A6),
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              GestureDetector(
                                onTap: () {
                                  // Handle send message
                                  if (_messageController.text
                                      .trim()
                                      .isNotEmpty) {
                                    print(
                                      'Sending message: ${_messageController.text}',
                                    );
                                    _messageController.clear();
                                  }
                                },
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD4AF37),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }

  Widget _buildChatItem(
    String name,
    String time,
    String imagePath, {
    bool isActive = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFF8F9FA) : Colors.transparent,
        border:
            isActive
                ? Border(left: BorderSide(color: Color(0xFF1976D2), width: 3))
                : null,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFFE8F0FE),
            child: Text(
              name.split(' ').map((e) => e[0]).join('').substring(0, 2),
              style: TextStyle(
                color: Color(0xFF1976D2),
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF202124),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Color(0xFF5F6368)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(
    String text, {
    required bool isFromUser,
    bool showAvatar = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment:
          isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isFromUser && showAvatar) ...[
          CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xFFE8F0FE),
            child: Text(
              'AS',
              style: TextStyle(
                color: Color(0xFF1976D2),
                fontWeight: FontWeight.w600,
                fontSize: 10,
              ),
            ),
          ),
          SizedBox(width: 8),
        ],
        if (!isFromUser && !showAvatar) SizedBox(width: 40),
        Flexible(
          child: Container(
            constraints: BoxConstraints(maxWidth: 280),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: isFromUser ? Color(0xFFD4AF37) : Color(0xFFE8E5D3),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: isFromUser ? Colors.white : Color(0xFF202124),
                height: 1.4,
              ),
            ),
          ),
        ),
        if (isFromUser) ...[
          SizedBox(width: 8),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFFD4AF37),
              child: Text(
                'Me',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
