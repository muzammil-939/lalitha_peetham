import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

import '../photography/photography_faq_support_wid.dart';

class PanditBookingBookingStatus extends StatefulWidget {
  const PanditBookingBookingStatus({super.key});

  @override
  State<PanditBookingBookingStatus> createState() =>
      _PanditBookingBookingStatusState();
}

class _PanditBookingBookingStatusState
    extends State<PanditBookingBookingStatus> {
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
            //buildherosection(),

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
                "KEEP TRACK OF YOUR UPCOMING POOJA \n‘SBOOKINGS",
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

  double horizontalPadding = isMobile
      ? 16
      : isTablet
          ? 60
          : 200;

  double titleFontSize = isMobile
      ? 20
      : isTablet
          ? 26
          : 30;

  double cardWidth = isMobile ? screenWidth * 0.9 : 900;

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
        top: isMobile ? 40 : 100,
        right: isMobile ? 20 : 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 50 : 80,
          width: isMobile ? 50 : 80,
        ),
      ),

      // 🌟 Foreground Content
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: isMobile ? 30 : 60),
                Text(
                  "Access the Full List of Your Scheduled and \nCompleted Poojas",
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: isMobile ? 30 : 50),
                SizedBox(
                  width: cardWidth,
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_booking_status');
                        },
                        child: _buildNavButton("My Bookings", isActive: true),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_payments_history');
                        },
                        child: _buildNavButton("Payments"),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_faq_support');
                        },
                        child: _buildNavButton("Support"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: isMobile ? 30 : 60),
                _buildBookingSummaryCard(context),
                SizedBox(height: isMobile ? 30 : 50),
                _buildBookingSummaryCard(context),
                SizedBox(height: isMobile ? 60 : 100),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}


 Widget _buildBookingSummaryCard(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Container(
    margin: const EdgeInsets.all(16),
    height: isMobile ? 450 : 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: isMobile
        ? Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/pandith_booking_pooja1.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                ),
              ),
              Expanded(child: _buildCardContent(context, isMobile: true)),
            ],
          )
        : Row(
            children: [
              Container(
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/pandith_booking_pooja1.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(8),
                  ),
                ),
              ),
              Expanded(child: _buildCardContent(context)),
            ],
          ),
  );
}

Widget _buildCardContent(BuildContext context, {bool isMobile = false}) {
  return Container(
    width: double.infinity,
    
    decoration: const BoxDecoration(
      color: Color(0xFFE4C74D),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(8),
        bottomRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
      ),
    ),
    padding: const EdgeInsets.all(20),
    child: isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBookingTextInfo(context),
              const SizedBox(height: 20),
              _buildBookingButtons(context),
            ],
          )
        : Row(
            children: [
              Expanded(child: _buildBookingTextInfo(context)),
              _buildBookingButtons(context),
            ],
          ),
  );
}
Widget _buildBookingTextInfo(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final double labelFontSize = isMobile ? 14 : 16;
  final double titleFontSize = isMobile ? 18 : 24;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        'Satyanarayan Puja',
        style: TextStyle(
          fontSize: titleFontSize,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: isMobile ? 8 : 12),
      Text(
        'Booking id :  PUJ1234678',
        style: TextStyle(fontSize: labelFontSize, color: Colors.black),
      ),
      Text(
        'Date        :  15 -07-25',
        style: TextStyle(fontSize: labelFontSize, color: Colors.black),
      ),
      Text(
        'Time        :  6:00 Am To 10:00 Am',
        style: TextStyle(fontSize: labelFontSize, color: Colors.black),
      ),
      Text(
        'Price        :  ₹ 1800',
        style: TextStyle(fontSize: labelFontSize, color: Colors.black),
      ),
    ],
  );
}
Widget _buildBookingButtons(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final buttonFontSize = isMobile ? 12.0 : 14.0;
  final horizontalPadding = isMobile ? 12.0 : 25.0;
  final verticalPadding = 8.0;

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // Reschedule Button
      GestureDetector(
        onTap: () => context.go('/pandit_booking_reschedule_form'),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Reschedule',
            style: TextStyle(
              fontSize: buttonFontSize,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),

      // Cancel Button
      GestureDetector(
        onTap: () => context.go('/pandit_booking_cancel_feedback'),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Cancel',
            style: TextStyle(
              fontSize: buttonFontSize,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),

      // Status Label
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          'Booked',
          style: TextStyle(
            fontSize: buttonFontSize,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}


  Widget _buildNavButton(String text, {bool isActive = false}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
    decoration: BoxDecoration(
      color: isActive ? Colors.white : Colors.grey[300],
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: const Offset(0, 2),
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
  );
}

}
