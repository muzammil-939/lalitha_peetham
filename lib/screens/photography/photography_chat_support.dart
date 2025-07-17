import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img2.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographyChatSupport extends StatelessWidget {
  const PhotographyChatSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return PhotographyLayout(
      child: Column(
        children: [
          PhotographyHeroImg2(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFF6B8E4B)),
              padding: EdgeInsets.all(80),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top navigation buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _buildNavButton("My Bookings"),
                        SizedBox(width: 12),
                        _buildNavButton("Payments"),
                        SizedBox(width: 12),
                        _buildNavButton("support", isActive: true),
                      ],
                    ),
                    SizedBox(height: 60),

                    // Tab navigation
                    Row(
                      children: [
                        _buildTabButton("chat support", isActive: true),
                        SizedBox(width: 30),
                        _buildTabButton("fqs support"),
                      ],
                    ),
                    SizedBox(height: 40),

                    //CHAT SECTION
                    Container(
                      height: 700,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          // Chat messages area
                          Expanded(
                            child: SingleChildScrollView(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  // First user message
                                  _buildUserMessage(
                                    "hi i have a problem booking issue",
                                  ),
                                  SizedBox(height: 30),
                                  // Support response
                                  _buildSupportMessage(
                                    "Thanks! Try clearing your browser cache and refreshing the page. Also, check your internet connection.",
                                  ),
                                  SizedBox(height: 30),
                                  // Second user message
                                  _buildUserMessage(
                                    "Okay, did that but still no luck.",
                                  ),
                                  SizedBox(height: 30),
                                  // Support response
                                  _buildSupportMessage(
                                    "Got it. I'll escalate this to our tech team and get back to you ASAP. Meanwhile, can you try a different",
                                  ),
                                  SizedBox(height: 30),
                                  // Third user message
                                  _buildUserMessage("Will do. Thanks"),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                          // Input area
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                // Add button
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8FAA6B),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                                SizedBox(width: 15),
                                // Text input
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    child: Text(
                                      "text",
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                // Send button
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4A90E2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 20,
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserMessage(String message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            constraints: BoxConstraints(maxWidth: 250),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFF9BB47A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          child: ClipOval(
            child: Image.network(
              'https://images.unsplash.com/photo-1494790108755-2616b9c64cb4?w=150&h=150&fit=crop&crop=face',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade300,
                  child: Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.grey.shade600,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSupportMessage(String message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF4A5D6A),
          ),
          child: Icon(Icons.headset_mic, color: Colors.white, size: 18),
        ),
        SizedBox(width: 8),
        Flexible(
          child: Container(
            constraints: BoxConstraints(maxWidth: 250),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFF9BB47A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavButton(String text, {bool isActive = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildTabButton(String text, {bool isActive = false}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        decoration: isActive ? TextDecoration.underline : TextDecoration.none,
        decorationColor: Colors.white,
        decorationThickness: 2,
      ),
    );
  }
}
