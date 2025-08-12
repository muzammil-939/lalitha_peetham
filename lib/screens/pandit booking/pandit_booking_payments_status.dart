import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingPaymentsStatus extends StatefulWidget {
  const PanditBookingPaymentsStatus({super.key});

  @override
  State<PanditBookingPaymentsStatus> createState() =>
      _PanditBookingPaymentsStatusState();
}

class _PanditBookingPaymentsStatusState
    extends State<PanditBookingPaymentsStatus> {

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
           // buildherosection(),

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
  final screenWidth = ResponsiveHelper.screenWidth(context);
  final screenHeight = ResponsiveHelper.screenHeight(context);

  return Stack(
    children: [
      // Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // Planet Image
      Positioned(
        top: isMobile ? 50 : 100,
        right: isMobile ? 20 : 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 50 : 80,
          width: isMobile ? 50 : 80,
        ),
      ),

      // Foreground
      Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : isTablet ? 60 : 150,
              vertical: isMobile ? 30 : 60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Heading
                SizedBox(height: isMobile ? 20 : 60),
                Text(
                  "PAYMENT INFO",
                  style: TextStyle(
                    fontSize: isMobile ? 20 : isTablet ? 26 : 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: isMobile ? 30 : 50),

                // Navigation Buttons
                SizedBox(
                  width: isMobile ? screenWidth * 0.9 : isTablet ? 600 : 900,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_booking_status');
                        },
                        child: _buildNavButton(context, "My Bookings"),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_payments_history');
                        },
                        child: _buildNavButton(context, "Payments", isActive: true),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_faq_support');
                        },
                        child: _buildNavButton(context, "Support"),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: isMobile ? 30 : 60),

                // Yellow Container
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFEAC63E)),
                  padding: EdgeInsets.all(isMobile ? 20 : 80),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Tabs
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => context.go('/pandit_booking_payments_history'),
                                      child: _buildTabButton("Payments"),
                                    ),
                                    SizedBox(width: 30),
                                    GestureDetector(
                                      onTap: () => context.go('/pandit_booking_payment_status'),
                                      child: _buildTabButton("Payment Status", isActive: true),
                                    ),
                                  ],
                                ),
                                SizedBox(height: isMobile ? 30 : 60),
                    
                                // Main Card
                                Container(
                                  height: isMobile ? null : 600,
                                  margin: EdgeInsets.all(isMobile ? 8 : 16),
                                  padding: EdgeInsets.all(isMobile ? 16 : 30),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 10,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Header
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Image
                                          Container(
                                            width: isMobile ? 80 : 120,
                                            height: isMobile ? 60 : 90,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                image: AssetImage('assets/images/pandith_booking_pooja1.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          // Details
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                _buildDetailRow("Client Name", ": Naresh Duggirala", isMobile),
                                                SizedBox(height: 8),
                                                _buildDetailRow("Service Type", ": Durga Pooja", isMobile),
                                                SizedBox(height: 8),
                                                _buildDetailRow("Date & Time", ": 15 June 2025,", isMobile),
                                                SizedBox(height: 8),
                                                _buildDetailRow("Location", ": Lakshmi Gardens, Hyderabad", isMobile),
                                                SizedBox(height: 8),
                                                _buildDetailRow("Package Name", ": Premium Package", isMobile),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                    
                                      SizedBox(height: 30),
                    
                                      Text(
                                        'Payment Details',
                                        style: TextStyle(
                                          fontSize: isMobile ? 16 : 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                    
                                      SizedBox(height: 25),
                    
                                      // Payment Table
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Text(
                                                  'Description',
                                                  style: TextStyle(
                                                    fontSize: isMobile ? 14 : 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Amount',
                                                  style: TextStyle(
                                                    fontSize: isMobile ? 14 : 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Status',
                                                  style: TextStyle(
                                                    fontSize: isMobile ? 14 : 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                    
                                          Divider(color: Colors.black, height: 30),
                    
                                          _buildPaymentRow('Total Cost', '₹9,999', '—', Colors.black, isMobile),
                                          SizedBox(height: 15),
                                          _buildPaymentRow('Advance Paid', '₹1000', 'Processing', Colors.black, isMobile),
                                          SizedBox(height: 15),
                                          _buildPaymentRow('Remaining Balance', '₹8,999', '✕ Pending', Colors.red, isMobile),
                                          SizedBox(height: 15),
                                          _buildPaymentRow('Payment Mode', 'PhonePe', 'Processing', Colors.black, isMobile),
                                        ],
                                      ),
                    
                                      SizedBox(height: 40),
                    
                                      Text(
                                        'Facing Payment Issues? Contact Our Support Team',
                                        style: TextStyle(
                                          fontSize: isMobile ? 14 : 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                    
                                      SizedBox(height: 20),
                    
                                      Container(
                                        width: isMobile ? 120 : 140,
                                        height: 50,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFE6C068),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            elevation: 0,
                                          ),
                                          child: Text(
                                            'Contact',
                                            style: TextStyle(
                                              fontSize: isMobile ? 16 : 18,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}


Widget _buildDetailRow(String label, String value, bool isMobile) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: isMobile ? 80 : 100,
        child: Text(
          label,
          style: TextStyle(
            fontSize: isMobile ? 12 : 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      Expanded(
        child: Text(
          value,
          style: TextStyle(fontSize: isMobile ? 12 : 14),
        ),
      ),
    ],
  );
}

Widget _buildPaymentRow(String desc, String amount, String status, Color color, bool isMobile) {
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Text(desc, textAlign: TextAlign.center, style: TextStyle(fontSize: isMobile ? 13 : 15, color: Colors.black)),
      ),
      Expanded(
        flex: 2,
        child: Text(amount, textAlign: TextAlign.center, style: TextStyle(fontSize: isMobile ? 13 : 15, color: Colors.black)),
      ),
      Expanded(
        flex: 2,
        child: Text(
          status,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isMobile ? 13 : 15,
            fontWeight: color == Colors.red ? FontWeight.w500 : FontWeight.normal,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget _buildNavButton(BuildContext context, String text, {bool isActive = false}) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Container(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40, vertical: isMobile ? 8 : 12),
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
        fontSize: isMobile ? 12 : 14,
        fontWeight: FontWeight.w500,
      ),
    ),
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

 
}
