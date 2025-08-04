import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingSummary extends StatefulWidget {
  const PanditBookingSummary({super.key});

  @override
  State<PanditBookingSummary> createState() => _PanditBookingSummaryState();
}

class _PanditBookingSummaryState extends State<PanditBookingSummary> {

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
            children: [
              Text(
                "Personalized Palm Reading by Experts",
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
  final isDesktop = ResponsiveHelper.isDesktop(context);
  final screenWidth = ResponsiveHelper.screenWidth(context);

  double containerWidth = isMobile
      ? screenWidth * 0.9
      : isTablet
          ? screenWidth * 0.8
          : 800;

  double headingFontSize = isMobile
      ? 22
      : isTablet
          ? 26
          : 30;

  double bodyFontSize = isMobile
      ? 14
      : isTablet
          ? 16
          : 18;

  double buttonHeight = isMobile ? 45 : 50;

  return Stack(
    children: [
      // 🌄 Background
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // 🌑 Planet Image
      Positioned(
        top: isMobile ? 40 : 100,
        right: isMobile ? 16 : 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 50 : 80,
          width: isMobile ? 50 : 80,
        ),
      ),

      // 🌟 Main content
      Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: isMobile ? 30 : 60),
          child: Column(
            children: [
              Text(
                "Your Booking Summary",
                style: TextStyle(
                  fontSize: headingFontSize,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 40 : 80),

              Container(
                width: containerWidth,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6C547),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Booking Info
                    _buildInfoText('Name: Ravi Kumar', bodyFontSize),
                    _buildInfoText('Mobile: +91 9876543210', bodyFontSize),
                    _buildInfoText('Puja Type: Satyanarayana Puja', bodyFontSize),
                    _buildInfoText('Purpose: Housewarming Ceremony', bodyFontSize),
                    _buildInfoText('Date & Time: 15 June 2025, 9:00 AM', bodyFontSize),
                    _buildInfoText('Location: Habsiguda, Hyderabad', bodyFontSize),
                    _buildInfoText('Preferred Language: Telugu', bodyFontSize),
                    _buildInfoText(
                      'Materials Required: Yes (Pandit will bring puja samagri)',
                      bodyFontSize,
                    ),

                    const SizedBox(height: 40),
                    Divider(color: Colors.white, thickness: 1.5),
                    const SizedBox(height: 16),

                    // Assigned Pandit
                    Text(
                      'Assigned Pandit Details',
                      style: TextStyle(
                        fontSize: bodyFontSize + 2,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildBulletPoint('Pandit Name: Pandit Sharmaji', bodyFontSize),
                          _buildBulletPoint('Contact Number: +91 91234 56789', bodyFontSize),
                          _buildBulletPoint('Language: Telugu', bodyFontSize),
                          _buildBulletPoint('Experience: 10+ Years in Vedic Pujas', bodyFontSize),
                          _buildBulletPoint('Samagri Included: Yes (extra charge may apply)', bodyFontSize),
                        ],
                      ),
                    ),

                    const SizedBox(height: 40),
                    Divider(color: Colors.white, thickness: 1.5),
                    const SizedBox(height: 16),

                    // Payment Summary
                    Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: bodyFontSize + 2,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildBulletPoint('Pandit Service Fee: ₹1400', bodyFontSize),
                          _buildBulletPoint('Samagri Cost: ₹600', bodyFontSize),
                          _buildBulletPoint('Total Cost: ₹2000', bodyFontSize),
                          _buildBulletPoint('Advance to Pay Now: ₹500', bodyFontSize),
                          _buildBulletPoint('Remaining Amount on Puja Day: ₹1500', bodyFontSize),
                        ],
                      ),
                    ),

                    const SizedBox(height: 60),

                    // Buttons
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              onPressed: () {
                                // Back button action
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[400],
                                foregroundColor: Colors.black87,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'Back',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              onPressed: () {
                                context.go('/pandit_booking_booking_confirmed');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black87,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'Send Request',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
Widget _buildInfoText(String text, double fontSize) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        height: 1.4,
      ),
    ),
  );
}

Widget _buildBulletPoint(String text, double fontSize) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(top: 8, right: 8),
          decoration: const BoxDecoration(
            color: Colors.black87,
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ),
      ],
    ),
  );
}

}
