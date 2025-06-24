import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/inbox_header_layout.dart';

class SentScreen extends StatefulWidget {
  const SentScreen({super.key});

  @override
  State<SentScreen> createState() => _SentScreenState();
}

class _SentScreenState extends State<SentScreen> {
  String selectedFilter = 'All Request';

  @override
  Widget build(BuildContext context) {
    return InboxHeaderLayout(
     
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          children: [
            // Left Sidebar
            Container(
              width: 280,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sort Header
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Color(0xFFB8941F), width: 2),
                        left: BorderSide(color: Color(0xFFB8941F), width: 2),
                        right: BorderSide(color: Color(0xFFB8941F), width: 2),
                      ),
                    ),
                    child: const Text(
                      'SORT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFCC901C),
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  // Filter Options
                  Container(
                    decoration: const BoxDecoration(
                      color: const Color(0xFFCC901C),
                      border: Border(
                        left: BorderSide(color: Color(0xFFB8941F), width: 2),
                        right: BorderSide(color: Color(0xFFB8941F), width: 2),
                        bottom: BorderSide(color: Color(0xFFB8941F), width: 2),
                      ),
                    ),
                    child: Column(
                      children: [
                        _buildFilterOption('All Request', true),
                        _buildFilterOption('Viewed By Him', false),
                        _buildFilterOption('Not Viewed By Him', false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Main Content Area
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  const Text(
                    'Sent Invitations',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFB8941F),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 24),
                  // Content Area
                  Container(
                    margin: const EdgeInsets.all(24),
                    padding: EdgeInsets.symmetric(horizontal: 180,vertical: 35),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0E6B8),
                      borderRadius: BorderRadius.circular(8),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Illustration
                        SizedBox(
                          height: 250,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Optional: Remove question marks and lightbulb if image includes them
                              SizedBox(
                                width: 180,
                                height: 250,
                                child: Image.asset(
                                  'assets/images/thinking_illustration.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                          
                        const SizedBox(height: 40),
                        // Empty State Message
                        DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(4),
                            color: Color(0xFFD4AF37),
                            strokeWidth: 1,
                            dashPattern: [4, 3],
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 35),
                              width: 300,
                              color: Colors.white,
                              child: Text(
                                'There Are No Sent Invitations',                            
                                style: TextStyle(fontSize: 16, color: const Color(0xFFCC901C)),
                              ),
                            ),
                           ),
                        const SizedBox(height: 30),
                        // View My Matches Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFCC901C),
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 32,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'VIEW MY MATCHES',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
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

  Widget _buildFilterOption(String title, bool isSelected) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
              color: isSelected ? Colors.white : Colors.transparent,
            ),
            child:
                isSelected
                    ? const Center(
                      child: Icon(
                        Icons.circle,
                        size: 8,
                       color: const Color(0xFFCC901C),
                      ),
                    )
                    : null,
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
