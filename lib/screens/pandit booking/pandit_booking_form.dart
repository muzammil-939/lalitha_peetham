import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingForm extends StatefulWidget {
  const PanditBookingForm({super.key});

  @override
  State<PanditBookingForm> createState() => _PanditBookingFormState();
}

class _PanditBookingFormState extends State<PanditBookingForm> {

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
                "Find the Perfect Pooja Service Tailored to\nYour Spiritual Needs",
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

  double containerWidth = isMobile ? MediaQuery.of(context).size.width * 0.9 : 800;
  double formFieldWidth = isMobile ? double.infinity : 350;
  double spacing = isMobile ? 12 : 24;
  double titleFontSize = isMobile ? 20 : 40;

  return Stack(
    children: [
      // // 🌄 Full Background Image
      // Positioned.fill(
      //   child: Image.asset(
      //     'assets/images/vastupooja4.png',
      //     fit: BoxFit.cover,
      //   ),
      // ),

      // // 🌑 Planet Image
      // Positioned(
      //   top: isMobile ? 30 : 100,
      //   right: isMobile ? 20 : 40,
      //   child: Image.asset(
      //     'assets/images/vastupooja11.png',
      //     height: isMobile ? 50 : 80,
      //     width: isMobile ? 50 : 80,
      //   ),
      // ),

      // 🌟 Foreground Content
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: isMobile ? 30 : 60),
              Text(
                "Book Your Pandit in Just in Minutes – Fill the Details\nBelow",
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 40 : 80),

              // 🟨 Responsive Form Container
              Container(
                width: containerWidth,
                padding: EdgeInsets.all(isMobile ? 16 : isTablet ? 20 : 30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFE6C85D), Color(0xFFD4B54A)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: spacing),

    // 📅 Date & ⏰ Time
    isMobile
        ? Column(
            children: [
              buildInputField('Date'),
              SizedBox(height: spacing),
              buildInputField('Time'),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildInputField('Date')),
              SizedBox(width: 20),
              Expanded(child: buildInputField('Time')),
            ],
          ),

    SizedBox(height: spacing),

    // 📍 Location & Language
    isMobile
        ? Column(
            children: [
              buildInputField('Location'),
              SizedBox(height: spacing),
              buildInputField('Language'),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildInputField('Location')),
              SizedBox(width: 20),
              Expanded(child: buildInputField('Language')),
            ],
          ),

    SizedBox(height: spacing),

    // 📦 Materials & Contact
    isMobile
        ? Column(
            children: [
              buildInputField('Do You Need Materials'),
              SizedBox(height: spacing),
              buildInputField('Contact Number'),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildInputField('Do You Need Materials')),
              SizedBox(width: 20),
              Expanded(child: buildInputField('Contact Number')),
            ],
          ),

    SizedBox(height: spacing),

    // 👤 Name & 🕉️ Puja Type
    isMobile
        ? Column(
            children: [
              buildInputField('Full Name'),
              SizedBox(height: spacing),
              buildDropdownField('Puja Type'),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildInputField('Full Name')),
              SizedBox(width: 20),
              Expanded(child: buildDropdownField('Puja Type')),
            ],
          ),

    SizedBox(height: spacing),

    // 📧 Email & 💰 Amount
    isMobile
        ? Column(
            children: [
              buildInputField('Email Address'),
              SizedBox(height: spacing),
              buildInputField('Amount'),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildInputField('Email Address')),
              SizedBox(width: 20),
              Expanded(child: buildInputField('Amount')),
            ],
          ),

    SizedBox(height: spacing),

    // 📝 Additional Notes (Full Width)
    buildInputField('Additional Notes', height: 80, isMultiline: true),
    SizedBox(height: spacing + 16),

    // 🚀 Continue Button
    Center(
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            context.go('/pandit_booking_waiting');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(
            'Send Request',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
    SizedBox(height: spacing),
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
Widget buildInputField(String label,
    {double? width, double height = 45, bool isMultiline = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      SizedBox(height: 8),
      Container(
        width: width,
        height: isMultiline ? height : 45,
        decoration: BoxDecoration(
          color: Color(0xFFDFDDDD),
          borderRadius: BorderRadius.circular(6),
        ),
        child: TextField(
          maxLines: isMultiline ? null : 1,
          expands: isMultiline,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ),
    ],
  );
}

Widget buildDropdownField(String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      SizedBox(height: 8),
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xFFDFDDDD),
          borderRadius: BorderRadius.circular(6),
        ),
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
          dropdownColor: Color(0xFFDFDDDD),
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.black54),
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
