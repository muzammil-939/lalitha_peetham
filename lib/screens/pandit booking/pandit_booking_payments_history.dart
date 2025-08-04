import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

import '../photography/photography_faq_support_wid.dart';

class PanditBookingPaymentsHistory extends StatefulWidget {
  const PanditBookingPaymentsHistory({super.key});

  @override
  State<PanditBookingPaymentsHistory> createState() =>
      _PanditBookingPaymentsHistoryState();
}

class _PanditBookingPaymentsHistoryState
    extends State<PanditBookingPaymentsHistory> {

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
                "PAYMENT INFO - CLICK TO VIEW",
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

  double horizontalPadding = isMobile ? 16 : isTablet ? 40 : 150;
  double containerPadding = isMobile ? 20 : isTablet ? 40 : 80;
  double navFontSize = isMobile ? 12 : 14;
  double headingFontSize = isMobile ? 22 : 30;
  double tabFontSize = isMobile ? 14 : 18;
  double imageSize = isMobile ? 50 : 80;
  double cardWidth = isMobile ? double.infinity : 900;

  return Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: isMobile ? 40 : 100,
        right: isMobile ? 16 : 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: imageSize,
          width: imageSize,
        ),
      ),
      Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: isMobile ? 30 : 60),
                    Text(
                      "PAYMENT INFO",
                      style: TextStyle(
                        fontSize: headingFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: isMobile ? 20 : 50),
                    SizedBox(
                      width: cardWidth,
                      child: Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          GestureDetector(
                            onTap: () => context.go('/pandit_booking_booking_status'),
                            child: _buildNavButton("My Bookings", fontSize: navFontSize),
                          ),
                          GestureDetector(
                            onTap: () => context.go('/pandit_booking_payments_history'),
                            child: _buildNavButton("Payments", isActive: true, fontSize: navFontSize),
                          ),
                          GestureDetector(
                            onTap: () => context.go('/pandit_booking_faq_support'),
                            child: _buildNavButton("Support", fontSize: navFontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: isMobile ? 30 : 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: isMobile ? 30 : 60),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFEAC63E)),
                  padding: EdgeInsets.all(containerPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(isMobile ? 12 : 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              spacing: 30,
                              runSpacing: 12,
                              children: [
                                GestureDetector(
                                  onTap: () => context.go('/pandit_booking_payments_history'),
                                  child: _buildTabButton("Payments", fontSize: tabFontSize, isActive: true),
                                ),
                                GestureDetector(
                                  onTap: () => context.go('/pandit_booking_payment_status'),
                                  child: _buildTabButton("Payment Status", fontSize: tabFontSize),
                                ),
                              ],
                            ),
                            SizedBox(height: isMobile ? 30 : 60),
                            _buildPaymentCard(context, isMobile),
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
  );
}

Widget _buildPaymentCard(BuildContext context, bool isMobile) {
  return LayoutBuilder(
    builder: (context, constraints) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 16),
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 16 : 30,
          vertical: isMobile ? 30 : 50,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            // 🧱 Row 1 - Image + Details + Badges
            isMobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildImageBox(),
                      SizedBox(height: 16),
                      _buildClientDetails(),
                      SizedBox(height: 16),
                      _buildPaymentBadges(),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildImageBox(),
                      SizedBox(width: 24),
                      Expanded(child: _buildClientDetails()),
                      SizedBox(width: 24),
                      _buildPaymentBadges(),
                    ],
                  ),

            SizedBox(height: 24),

            // 🧾 Row 2 - Info + Links + Button
            isMobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPaymentInfo(),
                      SizedBox(height: 16),
                      _buildPaymentLinks(),
                      SizedBox(height: 16),
                      _buildConfirmButton(context),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _buildPaymentInfo()),
                      SizedBox(width: 40),
                      Expanded(child: _buildPaymentLinks()),
                      SizedBox(width: 40),
                      _buildConfirmButton(context),
                    ],
                  ),
          ],
        ),
      );
    },
  );
}


Widget _buildNavButton(String text, {bool isActive = false, double fontSize = 14}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
Widget _buildImageBox() {
  return Container(
    width: 180,
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage('assets/images/pandith_booking_pooja1.png'),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _buildClientDetails() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildDetailRow('Client Name', ': Naresh Duggirala'),
      SizedBox(height: 8),
      _buildDetailRow('Service Type', ': Durga Pooja'),
      SizedBox(height: 8),
      _buildDetailRow('Date & Time', ': 15 June 2025'),
      SizedBox(height: 8),
      _buildDetailRow('Location', ': Lakshmi Gardens, Hyderabad'),
      SizedBox(height: 8),
      _buildDetailRow('Package Name', ': Premium Package'),
    ],
  );
}

Widget _buildPaymentBadges() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xFFF5C761),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text('Advance Paid: ₹5,000',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ),
      SizedBox(height: 8),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0x59FF4031),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text('Due Amount: ₹20,000',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ),
    ],
  );
}

Widget _buildPaymentInfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildDetailRow('Total Amount:', '₹25,000'),
      SizedBox(height: 8),
      _buildDetailRow('Invoice ID:', 'INV-2025-0610-001'),
      SizedBox(height: 8),
      _buildDetailRow('Payment Status:', 'Partially Paid'),
    ],
  );
}

Widget _buildPaymentLinks() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildLinkText('Download Invoice (PDF)'),
      SizedBox(height: 8),
      _buildLinkText('Pay Remaining Balance Now'),
      SizedBox(height: 8),
      _buildLinkText('Contact Billing Support'),
    ],
  );
}

Widget _buildConfirmButton(BuildContext context) {
  return GestureDetector(
    onTap: () => context.go('null'),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFF71B023),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'Confirmed',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

Widget _buildTabButton(String text, {bool isActive = false, double fontSize = 18}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.black,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      decoration: isActive ? TextDecoration.underline : TextDecoration.none,
      decorationColor: Colors.black,
      decorationThickness: 2,
    ),
  );
}


  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
      ],
    );
  }

  Widget _buildLinkText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        decoration: TextDecoration.underline,
      ),
    );
  }

    }