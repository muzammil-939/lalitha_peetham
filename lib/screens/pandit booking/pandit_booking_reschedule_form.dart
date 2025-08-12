import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingRescheduleForm extends StatefulWidget {
  const PanditBookingRescheduleForm({super.key});

  @override
  State<PanditBookingRescheduleForm> createState() =>
      _PanditBookingRescheduleFormState();
}

class _PanditBookingRescheduleFormState
    extends State<PanditBookingRescheduleForm> {

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
                "FILL OUT THE CORRECT INFORMATION TO \nPROCESS YOUR RESCHEDULE REQUEST",
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
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pooja Reschedule Request Form",
                style: TextStyle(
                  fontSize: isMobile ? 22 : (isTablet ? 26 : 30),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 40 : 80),

              // 🔲 Responsive Form Container
              Container(
                width: isMobile ? screenWidth * 0.95 : (isTablet ? 600 : 800),
                padding: const EdgeInsets.all(30),
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
                    buildResponsiveRow(
                      isMobile,
                      buildTextFieldBlock("Full Name"),
                      buildTextFieldBlock("Contact Number"),
                    ),
                    SizedBox(height: 24),
                    buildResponsiveRow(
                      isMobile,
                      buildTextFieldBlock("Email Address"),
                      buildDropdownBlock("Puja Type"),
                    ),
                    SizedBox(height: 24),
                    buildResponsiveRow(
                      isMobile,
                      buildTextFieldBlock("Date"),
                      buildTextFieldBlock("Time"),
                    ),
                    SizedBox(height: 24),
                    buildResponsiveRow(
                      isMobile,
                      buildTextFieldBlock("Location"),
                      buildTextFieldBlock("Language"),
                    ),
                    SizedBox(height: 24),

                    // Notes Section
                    Text(
                      'Additional Notes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDFDDDD),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const TextField(
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12),
                        ),
                      ),
                    ),

                    SizedBox(height: 40),

                    // Submit Button
                    Center(
                      child: SizedBox(
                        width: isMobile ? double.infinity : 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/pandit_booking_reschedule_confirmation');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black87,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 2,
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
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


  Widget buildResponsiveRow(bool isMobile, Widget first, Widget second) {
  return isMobile
      ? Column(
          children: [
            first,
            const SizedBox(height: 20),
            second,
          ],
        )
      : Row(
          children: [
            Expanded(child: first),
            const SizedBox(width: 20),
            Expanded(child: second),
          ],
        );
}

Widget buildTextFieldBlock(String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 8),
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xFFDFDDDD),
          borderRadius: BorderRadius.circular(6),
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
      ),
    ],
  );
}

Widget buildDropdownBlock(String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 8),
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xFFDFDDDD),
          borderRadius: BorderRadius.circular(6),
        ),
        child: DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
          dropdownColor: const Color(0xFFDFDDDD),
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black54),
          items: const [
            DropdownMenuItem(value: 'Ganesh Puja', child: Text('Ganesh Puja')),
            DropdownMenuItem(value: 'Lakshmi Puja', child: Text('Lakshmi Puja')),
            DropdownMenuItem(value: 'Saraswati Puja', child: Text('Saraswati Puja')),
            DropdownMenuItem(value: 'Durga Puja', child: Text('Durga Puja')),
          ],
          onChanged: (value) {},
        ),
      ),
    ],
  );
}


}
