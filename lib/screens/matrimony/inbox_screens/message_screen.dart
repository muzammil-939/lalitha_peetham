import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/inbox_header_layout.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  bool _isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = _isMobile(context);
    
    return InboxHeaderLayout(
      child: Padding(
        // FIXED: Responsive padding instead of fixed 150px
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 10 : 50, // Much smaller padding for mobile
        ),
        child: isMobile 
          ? _buildMobileLayout() 
          : _buildDesktopLayout(),
      ),
    );
  }

  // Mobile-friendly layout
  Widget _buildMobileLayout() {
    return Column(
      children: [
        // Search and filters section
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Search bar
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.search, color: Colors.grey),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'search by user id',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // I AM ONLINE header
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'I AM ONLINE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE67E22),
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Contacts list for mobile
        Expanded(
          child: ListView(
            children: [
              _buildContactItem('ADAM WEST', '4d', Colors.grey, false),
              _buildContactItem('BRIAN GRIFFIN', '1w', Colors.grey, false,
                  subtitle: 'Yay, this will be the best time of...'),
              _buildContactItem('SURESH', '1w', const Color(0xFFE67E22), true,
                  subtitle: 'Yay, this will be the best time of...'),
              _buildContactItem('LOIS GRIFFIN', '4d', Colors.red, false,
                  isSelected: true),
              _buildContactItem('JOE SWANSON', '6w', const Color(0xFFE67E22), true,
                  subtitle: 'Scott sent an attachment.'),
              _buildContactItem('MEG GRIFFIN', '8w', const Color(0xFFE67E22), true,
                  subtitle: 'You: Hey! Would Wynn like to co...'),
              _buildContactItem('NEIL QUAGMIRE', '', const Color(0xFFE67E22), true),
            ],
          ),
        ),
      ],
    );
  }

  // Desktop layout (your original design)
  Widget _buildDesktopLayout() {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 12, // Give it a fixed height
      child: Row(
        children: [
          // Left Sidebar - Contacts List
          Container(
            width: 400,
            color: Colors.white,
            child: Column(
              children: [
                // Header with search bar
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Search bar
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0F0F0),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: const Color(0xFFE0E0E0)),
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Icon(Icons.search, color: Colors.grey),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'search by user id',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Filter and Calendar icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.tune, color: Colors.grey[600]),
                          const SizedBox(width: 15),
                          Icon(Icons.calendar_today, color: Colors.grey[600]),
                        ],
                      ),
                    ],
                  ),
                ),
                // I AM ONLINE header
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'I AM ONLINE',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE67E22),
                      letterSpacing: 2,
                    ),
                  ),
                ),
                // Contacts List
                Expanded(
                  child: ListView(
                    children: [
                      _buildContactItem('ADAM WEST', '4d', Colors.grey, false),
                      _buildContactItem('BRIAN GRIFFIN', '1w', Colors.grey, false,
                          subtitle: 'Yay, this will be the best time of...'),
                      _buildContactItem('SURESH', '1w', const Color(0xFFE67E22), true,
                          subtitle: 'Yay, this will be the best time of...'),
                      _buildContactItem('LOIS GRIFFIN', '4d', Colors.red, false,
                          isSelected: true),
                      _buildContactItem('JOE SWANSON', '6w', const Color(0xFFE67E22), true,
                          subtitle: 'Scott sent an attachment.'),
                      _buildContactItem('MEG GRIFFIN', '8w', const Color(0xFFE67E22), true,
                          subtitle: 'You: Hey! Would Wynn like to co...'),
                      _buildContactItem('NEIL QUAGMIRE', '', const Color(0xFFE67E22), true),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Right Chat Area
          Expanded(
            child: Container(
              color: const Color(0xFFF5F5F5),
              child: Column(
                children: [
                  // Chat Header
                  Container(
                    height: 80,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey[300],
                          child: const Text('LG', style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(width: 15),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lois Griffin',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'online',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(Icons.phone, size: 24, color: Colors.grey[600]),
                            const SizedBox(width: 20),
                            Icon(Icons.videocam, size: 24, color: Colors.grey[600]),
                            const SizedBox(width: 20),
                            Icon(Icons.info_outline, size: 24, color: Colors.grey[600]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Chat Messages
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              children: [
                                _buildReceivedMessage(
                                  "Hahaha It's All Good!. I'm Here Another 10 Days. Just House/Dog Sitting Today Through Saturday Still.. Then Here Another Week After That Before I Come Home.",
                                ),
                                _buildSentMessage(
                                  "Nice! Let's Try And Grab Lunch Next Week. What's In Colorado For You?",
                                ),
                                _buildReceivedMessage("Peter, You Know My Family Lives Here."),
                                _buildReceivedMessage(
                                  "You're Welcome To Join Me Next Time. It Would Be Nice For You To See Them. It's Been Years. But You Need To Behave...",
                                ),
                                _buildSentMessage(
                                  "Gosh, It's Not Like Me To Do Anything Crazy Or Stupid.",
                                ),
                                _buildReceivedMessage("Sure, Peter."),
                                _buildSentMessage("Bird Is The Word."),
                                _buildReceivedMessage("Have You Been Drinking?"),
                                _buildReceivedMessage(
                                  "Peter, Did You Rob A Bunch Of People On The Beach With Your Metal Detector? Please Say No...",
                                ),
                                _buildSentMessage("Well, that's Only Half The Story 😊"),
                                _buildReceivedMessage(
                                  "Oh, I Wouldn't Worry About It, Peter. I've Put Stewie In The Oven A Bunch Of Times. If You Come To Your Senses Within 15 Minutes, Everything's Fine.",
                                ),
                                _buildSentMessage("Sorry, I Missed All That. I Was Tweeting."),
                              ],
                            ),
                          ),
                          // Message Input
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add_circle_outline, color: Color(0xFFE67E22)),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.image_outlined, color: Color(0xFFE67E22)),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.attach_file, color: Color(0xFFE67E22)),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.gif_box_outlined, color: Color(0xFFE67E22)),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Aa',
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.send, color: Colors.blue),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.thumb_up, color: Colors.blue),
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
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(
    String name,
    String time,
    Color statusColor,
    bool hasNotification, {
    String? subtitle,
    bool isSelected = false,
  }) {
    return Container(
      color: isSelected ? const Color(0xFFFFF3CD) : Colors.transparent,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        leading: Stack(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey[300],
              child: Text(
                name.substring(0, 2),
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            if (hasNotification)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: statusColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: isSelected ? const Color(0xFFE67E22) : Colors.black,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            : null,
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (time.isNotEmpty)
              Text(
                time,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            if (name == 'LOIS GRIFFIN')
              Container(
                margin: const EdgeInsets.only(top: 4),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildReceivedMessage(String message) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[300],
            child: const Text('L', style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF3CD),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                message,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSentMessage(String message) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFE8B838),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                message,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}