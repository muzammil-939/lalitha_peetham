import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

import '../photography/photography_faq_support_wid.dart';

class PanditBookingChatSupport extends StatefulWidget {
  const PanditBookingChatSupport({super.key});

  @override
  State<PanditBookingChatSupport> createState() =>
      _PanditBookingChatSupportState();
}

class _PanditBookingChatSupportState extends State<PanditBookingChatSupport> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),

            buildVastuBookingEnquiryFormPage(context),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildherosection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "Support",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/pandit_booking_home.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildVastuBookingEnquiryFormPage(BuildContext context) {
    return Stack(
      children: [
        // 🌄 Full Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),

        // 🌑 Planet Image (top-right)
        Positioned(
          top: 100,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 80,
            width: 80,
          ),
        ),

        // 🌟 Foreground Content
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              const Text(
                "Support",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.go('/pandit_booking_booking_status');
                      },
                      child: _buildNavButton("My Bookings"),
                    ),
                    SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        context.go('/pandit_booking_payments_history');
                      },
                      child: _buildNavButton("Payments"),
                    ),
                    SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        context.go('/pandit_booking_faq_support');
                      },
                      child: _buildNavButton("support", isActive: true),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 60),
              Container(
                width: 900,
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(color: const Color(0xFFFFDD66)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    // Tab navigation
                    Row(
                      children: [
                        GestureDetector(
                          onTap:
                              () => context.go('/pandit_booking_chat_support'),
                          child: _buildTabButton(
                            "chat support",
                            isActive: true,
                          ),
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                          onTap:
                              () => context.go('/pandit_booking_faq_support'),
                          child: _buildTabButton("fqs support"),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),

                    // SUPPORT FORM
                    Text(
                      "Upload A Screenshot And Write Your Problem Below – You'll Be Redirected\nTo Chat Support",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 40),

                    // Form fields row
                    Row(
                      children: [
                        // Left column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Full Name field
                              Text(
                                'Full Name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),

                              // Issue Section field
                              Text(
                                'Issue Section',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 80), // Space between columns
                        // Right column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Email field
                              Text(
                                'Email',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),

                              // Upload Image field
                              Text(
                                'Upload Image',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // Handle image upload
                                  },
                                  child: Center(
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black54,
                                          width: 2,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black54,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),

                    // Comment field
                    Text(
                      'Comment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: TextField(
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),

                    SizedBox(height: 40),

                    // Submit button
                    Center(
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Handle submit action
                            // _handleSubmit();
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 60),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabButton(String text, {bool isActive = false}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        decoration: isActive ? TextDecoration.underline : TextDecoration.none,
        decorationColor: Colors.black,
        decorationThickness: 2,
      ),
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
}

class PalmReadingServicesUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          // First Row - Basic Palm Insight and Dual Hand Reading
          Row(
            children: [
              Expanded(
                child: ServiceCard(
                  title: 'Basic Palm Insight',
                  price: '₹199',
                  features: [
                    'Single palm analysis (left or right)',
                    'Lifeline, heart line, brain line reading',
                    'Basic personality overview',
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ServiceCard(
                  title: 'Dual Hand Reading',
                  price: '₹399',
                  features: [
                    'Analysis of both hands',
                    'Life, career, and relationship insights',
                    'Future predictions (short-term)',
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Second Row - Complete Life Path Reading and Premium Consultation
          Row(
            children: [
              Expanded(
                child: ServiceCard(
                  title: 'Complete Life Path Reading',
                  price: '₹699',
                  features: [
                    'Detailed reading of all 7 major lines',
                    'Personality, health, career, love, and finance',
                    'Hand shape & element type',
                    'PDF report included',
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ServiceCard(
                  title: 'Premium Consultation',
                  price: '₹999',
                  features: [
                    'One-on-one live session with expert',
                    'Complete palm analysis + Q&A',
                    'Remedies & tips for challenges',
                    'Personalized 15-20 min video call',
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Third Row - Couples Compatibility Reading (centered)
          Row(
            children: [
              Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 2,
                child: ServiceCard(
                  title: 'Couples Compatibility Reading',
                  price: '₹1199',
                  features: [
                    'Palm reading for two people',
                    'Relationship compatibility analysis',
                    'Love and marriage prediction',
                    'Suggestive remedies',
                  ],
                ),
              ),
              Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;

  const ServiceCard({
    Key? key,
    required this.title,
    required this.price,
    required this.features,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),

            // Divider line
            Container(
              height: 1,
              color: Colors.grey[300],
              margin: EdgeInsets.only(bottom: 16),
            ),

            // Price
            Center(
              child: Text(
                price,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE6A040),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Features list
            ...features.asMap().entries.map((entry) {
              int index = entry.key;
              String feature = entry.value;
              return Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${index + 1}. ',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Expanded(
                      child: Text(
                        feature,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),

            SizedBox(height: 20),

            // Book now button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle booking action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE6A040),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: Text(
                  'Book now',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
