import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class AstrologyWelcomeScreen extends StatefulWidget {
  const AstrologyWelcomeScreen({super.key});

  @override
  State<AstrologyWelcomeScreen> createState() => _AstrologyWelcomeScreenState();
}

class _AstrologyWelcomeScreenState extends State<AstrologyWelcomeScreen> {

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
    return  VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildherosection(),
            //SizedBox(height: 40),
            buildVastuBookingEnquiryFormPage(),
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
    
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);

  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        'assets/images/vastupooja1.png',
        width: double.infinity,
        height: isMobile ? 300 : isTablet ? 400 : 600,
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
        top: isMobile ? 80 : 120,
        child: Column(
          children: [
            Text(
              "Book Customized E-Poojas Online – Your\nRitual, Your Way",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 18 : isTablet ? 28 : 45,
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
      'assets/images/vastupooja18.png',
      height: isMobile ? 100 : isTablet ? 120 : 180,
      width: isMobile ? 150 : isTablet ? 180 : 280,
      fit: BoxFit.cover,
    ),
  ),
),
    ],
  );
}


  Widget buildVastuBookingEnquiryFormPage() {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final screenWidth = ResponsiveHelper.screenWidth(context);
final screenHeight = ResponsiveHelper.screenHeight(context);
    return Stack(
    children: [
      // 🌄 Background Image
     Positioned(
  top: 0,
  left: 0,
  child: SizedBox(
    width: screenWidth,
    height: isMobile ? 200 : isTablet ? 300 : 350,
    child: Image.asset(
      'assets/images/vastupooja4.png',
      fit: BoxFit.cover,
    ),
  ),
),


      // 🪐 Planet Image
     Positioned(
  top: isMobile ? 20 : 40,
  right: isMobile ? 10 : 30,
  child: Image.asset(
    'assets/images/vastupooja11.png',
    height: isMobile ? 40 : 60,
    width: isMobile ? 40 : 60,
  ),
),

        
       // Background Watermark (Vector Image)
        Positioned.fill(
  child: Align(
    alignment: Alignment.center,
    child: Opacity(
      opacity: 0.8,
      child: Image.asset(
        'assets/images/Vector (2).png',
        width: isMobile ? 250 : isTablet ? 300 : 500,
        height: isMobile ? 250 : isTablet ? 300 : 500,
        fit: BoxFit.contain,
      ),
    ),
  ),
),


      Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: isMobile ? 20 : isTablet ? 80 : 200,
    vertical: isMobile ? 20 : 40,
),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "VASTU BOOKING ENQUIRY FORM PAGE",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "POOJA SUMMARY",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
      
              // Two-column form grid
                        LayoutBuilder(
  builder: (context, constraints) {
    final isMobile = ResponsiveHelper.isMobile(context);

    final itemWidth = isMobile
        ? constraints.maxWidth
        : (constraints.maxWidth - 30) / 2;

    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        buildInput("Full Name", width: itemWidth),
        buildInput("Contact Number & Email", width: itemWidth),
        buildInput("Property Type", width: itemWidth),
        buildInput("Location", width: itemWidth),
        buildInput("Preferred Date", width: itemWidth),
        buildInput("Time", width: itemWidth),
      ],
    );
  },
),


      
              const SizedBox(height: 20),
              // Additional Comment
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Additional Comment",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
      
              const SizedBox(height: 60),
      
              // Continue Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 160,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/choose_your_astrology');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3A72F),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ]
    );
  }

 Widget buildInput(String label, {double width = 300}) {
  final isMobile = ResponsiveHelper.isMobile(context);

  return SizedBox(
    width: isMobile ? double.infinity : width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: isMobile ? 14 : 16)),
        const SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey.shade300,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
      ],
    ),
  );
}


}


