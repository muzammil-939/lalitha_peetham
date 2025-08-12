import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingRescheduleConfirmation extends StatefulWidget {
  const PanditBookingRescheduleConfirmation({super.key});

  @override
  State<PanditBookingRescheduleConfirmation> createState() =>
      _PanditBookingRescheduleConfirmationState();
}

class _PanditBookingRescheduleConfirmationState
    extends State<PanditBookingRescheduleConfirmation> {

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
    return PalmReadingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
          //  buildherosection(),

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
                "BOOKING CONFIRMED TRACK YOUR \nPOOJA",
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

  return Stack(
    children: [
      // 🌄 Background
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // 🌑 Decorative Image
      Positioned(
        top: isMobile ? 40 : 100,
        right: isMobile ? 20 : 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 50 : 80,
          width: isMobile ? 50 : 80,
        ),
      ),

      // 🌟 Main Content
      Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: isMobile ? 30 : 60),
              Text(
                "Reschedule Confirmation – Pooja Booking",
                style: TextStyle(
                  fontSize: isMobile ? 22 : 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 40 : 80),

              Container(
                width: isMobile ? screenWidth * 0.95 : (isTablet ? 650 : 800),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: buildMainCont(context, isMobile),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
Widget buildMainCont(BuildContext context, bool isMobile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: isMobile ? 20 : 30),

      Text(
        'Your pooja has been successfully rescheduled. Please check the updated \ndetails below',
        style: TextStyle(
          fontSize: isMobile ? 14 : 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
          height: 1.4,
        ),
      ),
      const SizedBox(height: 40),
      Divider(color: Colors.white, thickness: 1.5),

      SizedBox(height: 30),
      Text(
        'Updated Booking Details',
        style: TextStyle(
          fontSize: isMobile ? 16 : 18,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
          height: 1.2,
        ),
      ),
      SizedBox(height: 16),

      _buildDetailRow('Booking ID: #PND12345'),
      _buildDetailRow('Name: Ravi Kumar'),
      _buildDetailRow('Pooja Type: Satyanarayana Pooja'),
      _buildDetailRow('New Date: 20 June 2025'),
      _buildDetailRow('New Time: 10:00 AM'),
      _buildDetailRow('Location: Habsiguda, Hyderabad'),
      _buildDetailRow('Language Preference: Telugu'),
      _buildDetailRow('Pandit: Will be confirmed 1 day before the pooja'),
      _buildDetailRow('Package: With Samagri'),
      _buildDetailRow('Payment Status: ₹500 Advance Paid | ₹3,000 Pending'),

      const SizedBox(height: 40),
      Divider(color: Colors.white, thickness: 1.5),

      SizedBox(height: 24),
      Text(
        'Support Contact',
        style: TextStyle(
          fontSize: isMobile ? 14 : 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
          height: 1.2,
        ),
      ),
      SizedBox(height: 12),

      Text(
        'If you have any further changes or questions, feel free to contact us:',
        style: TextStyle(
          fontSize: isMobile ? 13 : 14,
          color: Colors.black87,
          height: 1.4,
        ),
      ),
      SizedBox(height: 8),

      Row(
        children: [
          const Text('📱 ', style: TextStyle(fontSize: 16)),
          Flexible(
            child: Text(
              'WhatsApp/Call: +91-XXXXXXXXXX',
              style: TextStyle(fontSize: isMobile ? 13 : 14, height: 1.4),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        children: [
          const Text('📧 ', style: TextStyle(fontSize: 16)),
          Flexible(
            child: Text(
              'Email: bookings@yourpoojaservice.com',
              style: TextStyle(fontSize: isMobile ? 13 : 14, height: 1.4),
            ),
          ),
        ],
      ),
      SizedBox(height: 8),
      Row(
        children: [
          const Text('🙏 ', style: TextStyle(fontSize: 16)),
          Flexible(
            child: Text(
              'Thank you for choosing our service!',
              style: TextStyle(fontSize: isMobile ? 13 : 14, height: 1.4),
            ),
          ),
        ],
      ),

      const SizedBox(height: 40),
      Divider(color: Colors.white, thickness: 1.5),
      SizedBox(height: 20),

      Text(
        'A Confirmation Message Has Been Sent To Your Email And \nWhatsApp With All Puja Details',
        style: TextStyle(
          fontSize: isMobile ? 14 : 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
          height: 1.4,
        ),
      ),
      SizedBox(height: 30),

      // Buttons
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                        foregroundColor: Colors.black87,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: const Text(
                        'Download Details',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/pandit_booking_home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
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
  );
}
Widget _buildDetailRow(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black87,
        height: 1.4,
      ),
    ),
  );
}
    }