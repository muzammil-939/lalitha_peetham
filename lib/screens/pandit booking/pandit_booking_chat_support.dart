import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

import '../photography/photography_faq_support_wid.dart';

class PanditBookingChatSupport extends StatefulWidget {
  const PanditBookingChatSupport({super.key});

  @override
  State<PanditBookingChatSupport> createState() =>
      _PanditBookingChatSupportState();
}

class _PanditBookingChatSupportState extends State<PanditBookingChatSupport> {

       void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }

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
      final size = MediaQuery.of(context).size;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;
    

    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

        double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
         // Menu button positioned at top
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          top: 120,
          child: Column(
            children:  [
              Text(
                "Support",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                   fontSize: ResponsiveFontsize.fontSize(
                    context, mobile: 20, tablet: 30, desktop: 45),
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
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final screenWidth = ResponsiveHelper.screenWidth(context);

  double formWidth = isMobile ? screenWidth * 0.9 : (isTablet ? 700 : 900);
  double headingFontSize = isMobile ? 24 : 30;
  double textFontSize = isMobile ? 14 : 16;
  double buttonWidth = isMobile ? double.infinity : 200;

  return Stack(
    children: [
      // 🌄 Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // 🌑 Planet Image
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Text(
                "Support",
                style: TextStyle(
                  fontSize: headingFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),

              // Nav Buttons
              SizedBox(
                width: formWidth,
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    _buildNavButton("My Bookings", onTap: () => context.go('/pandit_booking_booking_status')),
                    _buildNavButton("Payments", onTap: () => context.go('/pandit_booking_payments_history')),
                    _buildNavButton("support", isActive: true, onTap: () => context.go('/pandit_booking_faq_support')),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Support Form Container
              Container(
                width: formWidth,
                padding: EdgeInsets.all(isMobile ? 20 : 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tabs
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => context.go('/pandit_booking_chat_support'),
                          child: _buildTabButton("chat support", isActive: true),
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () => context.go('/pandit_booking_faq_support'),
                          child: _buildTabButton("fqs support"),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    Text(
                      "Upload A Screenshot And Write Your Problem Below – You'll Be Redirected\nTo Chat Support",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: textFontSize,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Form Layout
                    isMobile
                        ? Column(
                            children: [
                              _buildFormLeftColumn(textFontSize),
                              const SizedBox(height: 20),
                              _buildFormRightColumn(textFontSize),
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(child: _buildFormLeftColumn(textFontSize)),
                              const SizedBox(width: 60),
                              Expanded(child: _buildFormRightColumn(textFontSize)),
                            ],
                          ),

                    const SizedBox(height: 30),

                    // Comment Field
                    Text('Comment', style: TextStyle(fontSize: textFontSize, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: TextField(
                        maxLines: null,
                        expands: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Submit Button
                    Center(
                      child: SizedBox(
                        width: buttonWidth,
                        height: 50,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            // Submit logic
                          },
                          child: const Text(
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

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
Widget _buildFormLeftColumn(double fontSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildInputField(label: 'Full Name', fontSize: fontSize),
      const SizedBox(height: 30),
      _buildInputField(label: 'Issue Section', fontSize: fontSize),
    ],
  );
}

Widget _buildFormRightColumn(double fontSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildInputField(label: 'Email', fontSize: fontSize),
      const SizedBox(height: 30),
      Text('Upload Image', style: TextStyle(fontSize: fontSize)),
      const SizedBox(height: 8),
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(6),
        ),
        child: InkWell(
          onTap: () {
            // Image upload logic
          },
          child: Center(
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black54, width: 2),
              ),
              child: Icon(Icons.add, color: Colors.black54, size: 18),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _buildInputField({required String label, required double fontSize}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(fontSize: fontSize)),
      const SizedBox(height: 8),
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(6),
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ),
    ],
  );
}

Widget _buildNavButton(String text, {bool isActive = false, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
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
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

Widget _buildTabButton(String text, {bool isActive = false}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      decoration: isActive ? TextDecoration.underline : TextDecoration.none,
      decorationColor: Colors.black,
      decorationThickness: 2,
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
