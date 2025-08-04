import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingBookingConfirmed extends StatefulWidget {
  const PanditBookingBookingConfirmed({super.key});

  @override
  State<PanditBookingBookingConfirmed> createState() =>
      _PanditBookingBookingConfirmedState();
}

class _PanditBookingBookingConfirmedState
    extends State<PanditBookingBookingConfirmed> {

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
                "Booking Confirmed track your pooja",
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
          ? screenWidth * 0.85
          : 800;

  double headingFontSize = isMobile ? 22 : isTablet ? 26 : 30;
  double bodyFontSize = isMobile ? 13 : isTablet ? 14 : 16;
  double sectionTitleFontSize = isMobile ? 15 : isTablet ? 16 : 18;
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

      // 🌑 Planet image
      Positioned(
        top: isMobile ? 40 : 100,
        right: isMobile ? 16 : 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 50 : 80,
          width: isMobile ? 50 : 80,
        ),
      ),

      // 🌟 Foreground content
      Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: isMobile ? 30 : 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Booking Confirmed – Thank You!",
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
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFE6C85D), Color(0xFFD4B54A)],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ✅ Success Message
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Your Pandit has been successfully booked. We've received your advance payment and your puja is scheduled.",
                        style: TextStyle(
                          fontSize: bodyFontSize,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    // ✅ Booking Details Section
                    _buildSectionTitle("Booking Details", sectionTitleFontSize),
                    const SizedBox(height: 12),
                    _buildBookingDetails(bodyFontSize),

                    const SizedBox(height: 24),

                    // ✅ Assigned Pandit Section
                    _buildSectionTitle("Assigned Pandit Details", sectionTitleFontSize),
                    const SizedBox(height: 12),
                    _buildAssignedPanditDetails(bodyFontSize),

                    const SizedBox(height: 24),

                    // ✅ Payment Table
                    _buildSectionTitle("Payment Summary", sectionTitleFontSize),
                    const SizedBox(height: 12),
                    _buildPaymentTable(bodyFontSize),

                    const SizedBox(height: 24),

                    // ✅ Payment Method
                    _buildSectionTitle("Payment Method (Advance)", sectionTitleFontSize),
                    const SizedBox(height: 12),
                    _buildDetailItem("Paid via:", "Google Pay / PhonePe", bodyFontSize),
                    _buildDetailItem("UPI ID:", "panditbooking@upi", bodyFontSize),
                    _buildDetailItem("Transaction ID:", "TXN-PB952741", bodyFontSize),
                    _buildDetailItem("Date:", "11 June 2025, 10:15 AM", bodyFontSize),

                    const SizedBox(height: 24),

                    // ✅ Next Step
                    _buildSectionTitle("Next Step", sectionTitleFontSize),
                    const SizedBox(height: 12),
                    Text(
                      "Kindly Pay The Remaining ₹1500 In Cash Or UPI Directly To The Pandit After The Puja Is Completed.",
                      style: TextStyle(
                        fontSize: bodyFontSize,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "A Confirmation Message Has Been Sent To Your Email And WhatsApp With All Puja Details",
                      style: TextStyle(
                        fontSize: bodyFontSize,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 32),

                    // ✅ Buttons
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[400],
                                foregroundColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                "Download Details",
                                style: TextStyle(
                                  fontSize: bodyFontSize,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              onPressed: () {
                                context.go('/pandit_booking_waiting');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: bodyFontSize,
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
          ),
        ),
      ),
    ],
  );
}
Widget _buildSectionTitle(String title, double fontSize) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  );
}

Widget _buildDetailItem(String label, String value, double fontSize) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildBookingDetails(double fontSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildDetailItem("Name:", "Ravi Kumar", fontSize),
      _buildDetailItem("Mobile:", "+91 9876543210", fontSize),
      _buildDetailItem("Puja Type:", "Satyanarayana Puja (Housewarming)", fontSize),
      _buildDetailItem("Date & Time:", "15 June 2025, 9:00 AM", fontSize),
      _buildDetailItem("Location:", "Habsiguda, Hyderabad", fontSize),
      _buildDetailItem("Preferred Language:", "Telugu", fontSize),
      _buildDetailItem("Samagri Provided by Pandit:", "", fontSize),
      _buildDetailItem("Samagri Cost:", "₹600", fontSize),
      _buildDetailItem("Pandit Fee:", "₹1400", fontSize),
      _buildDetailItem("Total Amount:", "₹2000", fontSize),
      _buildDetailItem("Advance Paid:", "₹500", fontSize),
      _buildDetailItem("Balance to Pay on Puja Day:", "₹1500", fontSize),
    ],
  );
}

Widget _buildAssignedPanditDetails(double fontSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildDetailItem("Name:", "Pandit Sharmaji", fontSize),
      _buildDetailItem("Contact Number:", "+91 91234 56789", fontSize),
      _buildDetailItem("Experience:", "10+ Years", fontSize),
      _buildDetailItem("Language:", "Telugu", fontSize),
      Row(
        children: [
          Text(
            "Will Bring Samagri: ",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const Icon(Icons.check, color: Colors.green, size: 16),
          Text(
            "Yes",
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildPaymentTable(double fontSize) {
  return Table(
    border: TableBorder.all(color: Colors.black54, width: 1),
    children: [
      TableRow(
        decoration: const BoxDecoration(color: Colors.black12),
        children: [
          _buildTableCell("Payment Type", fontSize, true),
          _buildTableCell("Amount (₹)", fontSize, true),
          _buildTableCell("Status", fontSize, true),
        ],
      ),
      TableRow(
        children: [
          _buildTableCell("Advance Paid", fontSize, false),
          _buildTableCell("₹500", fontSize, false),
          _buildTableCell("Received", fontSize, false),
        ],
      ),
      TableRow(
        children: [
          _buildTableCell("Remaining Balance", fontSize, false),
          _buildTableCell("₹1500", fontSize, false),
          _buildTableCell("To Be Paid On Puja Day", fontSize, false),
        ],
      ),
    ],
  );
}

Widget _buildTableCell(String text, double fontSize, bool isHeader) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: isHeader ? FontWeight.bold : FontWeight.w400,
        color: Colors.black87,
      ),
    ),
  );
}

}
