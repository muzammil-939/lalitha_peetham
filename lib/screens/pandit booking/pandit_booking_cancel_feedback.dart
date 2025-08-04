import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingCancelFeedback extends StatefulWidget {
  const PanditBookingCancelFeedback({super.key});

  @override
  State<PanditBookingCancelFeedback> createState() =>
      _PanditBookingCancelFeedbackState();
}

class _PanditBookingCancelFeedbackState
    extends State<PanditBookingCancelFeedback> {
  String selectedPoojaType = '';
  String selectedCancellationReason = '';
  TextEditingController fullNameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController commentsController = TextEditingController();
  final TextEditingController nameController = TextEditingController();


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
                "COULD YOU PLEASE LET US KNOW THE REASON FOR \nTHE POOJA CANCELLATION?",
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
  bool isMobile = ResponsiveHelper.isMobile(context);
  bool isTablet = ResponsiveHelper.isTablet(context);
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

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
        child: SingleChildScrollView(
          padding: EdgeInsets.all(isMobile ? 16 : 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Text(
                "Your Feedback Matters – Pooja Cancellation Reason",
                style: TextStyle(
                  fontSize: isMobile ? 20 : 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Container(
                width: isMobile ? double.infinity : 800,
                padding: EdgeInsets.all(isMobile ? 16 : 30),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: buildMainCont(context, isMobile, screenHeight),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildMainCont(BuildContext context, bool isMobile, double screenHeight) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(isMobile ? 16 : 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dear karthik',
          style: TextStyle(fontSize: isMobile ? 14 : 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Text('🙏 Namaste!', style: TextStyle(fontSize: isMobile ? 14 : 16)),
        const SizedBox(height: 20),

        Text(
          'We noticed that your recent pooja booking was cancelled.\n'
          'Could you please let us know the reason for the cancellation?\n'
          'This will help us understand your needs better and improve our\n'
          'service.',
          style: TextStyle(fontSize: isMobile ? 13 : 14, height: 1.4),
        ),
        const SizedBox(height: 20),
        Text(
          'If there\'s anything we can assist with—rescheduling, change of\n'
          'pandit, or pooja type—please feel free to contact us.\n'
          'We\'re always here to help you with your spiritual needs.',
          style: TextStyle(fontSize: isMobile ? 13 : 14, height: 1.4),
        ),
        const SizedBox(height: 20),

        Row(
          children: [
            const Text('📞', style: TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            Text('Call / WhatsApp: +91-XXXXXXXXXX', style: TextStyle(fontSize: isMobile ? 13 : 14)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text('🕐', style: TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            Text('Support Hours: 8:00 AM - 9:00 PM', style: TextStyle(fontSize: isMobile ? 13 : 14)),
          ],
        ),
        const SizedBox(height: 25),

        Text('Thank you for choosing our service.', style: TextStyle(fontSize: isMobile ? 13 : 14)),
        Text('Warm regards,', style: TextStyle(fontSize: isMobile ? 13 : 14)),
        Text('Sree Lalitha peetham', style: TextStyle(fontSize: isMobile ? 13 : 14)),
        Text('Pooja Services Team', style: TextStyle(fontSize: isMobile ? 13 : 14)),
        const SizedBox(height: 30),

        // 👤 Name and Contact
        isMobile
            ? Column(
                children: [_buildNameField(isMobile), const SizedBox(height: 20), _buildContactField(isMobile)],
              )
            : Row(
                children: [
                  Expanded(child: _buildNameField(isMobile)),
                  const SizedBox(width: 20),
                  Expanded(child: _buildContactField(isMobile)),
                ],
              ),
        const SizedBox(height: 25),

        // 📋 Pooja & Reason
        isMobile
            ? Column(
                children: [
                  _buildPoojaOptions(isMobile),
                  const SizedBox(height: 30),
                  _buildReasonOptions(isMobile),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _buildPoojaOptions(isMobile)),
                  const SizedBox(width: 30),
                  Expanded(child: _buildReasonOptions(isMobile)),
                ],
              ),
        const SizedBox(height: 25),

        // ✍️ Comments
        Text('Additional Comments (Optional)', style: TextStyle(fontSize: isMobile ? 13 : 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(color: const Color(0xFFD4D4D4), borderRadius: BorderRadius.circular(4)),
          child: TextField(
            controller: commentsController,
            maxLines: null,
            decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(12)),
            style: TextStyle(fontSize: isMobile ? 13 : 14),
          ),
        ),
        const SizedBox(height: 30),

        // ✅ Submit Button
        Center(
          child: Container(
            width: 200,
            height: 45,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: TextButton(
              onPressed: () => context.go('/pandit_booking_home'),
              child: Text(
                'Submit',
                style: TextStyle(fontSize: isMobile ? 14 : 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildPoojaOptions(bool isMobile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Type of Pooja Booked:',
        style: TextStyle(
          fontSize: isMobile ? 13 : 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 10),
      _buildCheckboxOption('Ganesh Puja', 'ganesh', isMobile),
      _buildCheckboxOption('Satyanarayana Puja', 'satyanarayan', isMobile),
      _buildCheckboxOption('Marriage Puja', 'marriage', isMobile),
      Row(
        children: [
          _buildCheckbox('other_pooja', isMobile),
          SizedBox(width: isMobile ? 6 : 8),
          Text(
            'Other:',
            style: TextStyle(fontSize: isMobile ? 12 : 13, color: Colors.black87),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: isMobile ? 18 : 20,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black87, width: 1),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
Widget _buildReasonOptions(bool isMobile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Reason for Cancellation:',
        style: TextStyle(
          fontSize: isMobile ? 13 : 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 10),
      _buildCancellationOption('Change in Plans', 'change_plans', isMobile),
      _buildCancellationOption('Family Emergency', 'family_emergency', isMobile),
      _buildCancellationOption('Booked by Mistake', 'mistake', isMobile),
      _buildCancellationOption('Found Another Pandit', 'another_pandit', isMobile),
      _buildCancellationOption('Rescheduling', 'rescheduling', isMobile),
      Row(
        children: [
          _buildCancellationCheckbox('other_reason', isMobile),
          SizedBox(width: isMobile ? 6 : 8),
          Text(
            'Other:',
            style: TextStyle(fontSize: isMobile ? 12 : 13, color: Colors.black87),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: isMobile ? 18 : 20,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black87, width: 1),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}


 Widget _buildCheckboxOption(String title, String value, bool isMobile) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        _buildCheckbox(value, isMobile),
        SizedBox(width: isMobile ? 6 : 8),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: isMobile ? 12 : 13,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildCancellationOption(String title, String value, bool isMobile) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        _buildCancellationCheckbox(value, isMobile),
        SizedBox(width: isMobile ? 6 : 8),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: isMobile ? 12 : 13,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildCheckbox(String value, bool isMobile) {
  return Container(
    width: isMobile ? 14 : 16,
    height: isMobile ? 14 : 16,
    decoration: BoxDecoration(
      color: const Color(0xFFD4D4D4),
      borderRadius: BorderRadius.circular(2),
      border: Border.all(color: Colors.black54, width: 1),
    ),
    child: selectedPoojaType == value
        ? Icon(
            Icons.check,
            size: isMobile ? 10 : 12,
            color: Colors.black87,
          )
        : null,
  );
}
Widget _buildCancellationCheckbox(String value, bool isMobile) {
  return Container(
    width: isMobile ? 14 : 16,
    height: isMobile ? 14 : 16,
    decoration: BoxDecoration(
      color: const Color(0xFFD4D4D4),
      borderRadius: BorderRadius.circular(2),
      border: Border.all(color: Colors.black54, width: 1),
    ),
    child: selectedCancellationReason == value
        ? Icon(
            Icons.check,
            size: isMobile ? 10 : 12,
            color: Colors.black87,
          )
        : null,
  );
}



Widget _buildNameField(bool isMobile) {
  return TextField(
    controller: nameController,
    decoration: InputDecoration(
      hintText: 'Full Name',
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.black87),
      ),
    ),
    style: TextStyle(fontSize: isMobile ? 13 : 14),
  );
}

Widget _buildContactField(bool isMobile) {
  return TextField(
    controller: contactController,
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      hintText: 'Contact Number',
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.black87),
      ),
    ),
    style: TextStyle(fontSize: isMobile ? 13 : 14),
  );
}


}
