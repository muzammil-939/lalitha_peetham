import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ScheduleASessionWithAstrologers extends StatefulWidget {
  const ScheduleASessionWithAstrologers({super.key});

  @override
  State<ScheduleASessionWithAstrologers> createState() => _ScheduleASessionWithAstrologersState();
}

class _ScheduleASessionWithAstrologersState extends State<ScheduleASessionWithAstrologers> {

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
  
   // Astrologer details
  final fullNameController = TextEditingController();
  final experienceController = TextEditingController();
  final serviceController = TextEditingController();
  final consultationModeController = TextEditingController();
  final preferredDateController = TextEditingController();
  final timeController = TextEditingController();

  // Customer details
  final customerNameController = TextEditingController();
  final contactNumberController = TextEditingController();
  final emailController = TextEditingController();

  // Payment
  final poojaChargesController = TextEditingController();
  final totalCostController = TextEditingController();

    @override
  void dispose() {
    fullNameController.dispose();
    experienceController.dispose();
    serviceController.dispose();
    consultationModeController.dispose();
    preferredDateController.dispose();
    timeController.dispose();
    customerNameController.dispose();
    contactNumberController.dispose();
    emailController.dispose();
    poojaChargesController.dispose();
    totalCostController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
             buildScheduleASessionWithAstrologers(),
             SizedBox(height: 80,),
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
              'assets/images/online_pooja2.jpg',
              height: isMobile ? 100 : isTablet ? 120: 180,
              width: isMobile ? 150 : isTablet ? 180 : 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Widget buildTextField(String label, String hint, TextEditingController controller) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hint,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }


 Widget buildScheduleASessionWithAstrologers() {
    final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final screenWidth = ResponsiveHelper.screenWidth(context);
  return Stack(
    children: [
      // Background Vector Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: isMobile ? 200 : isTablet ? 300 : 350,
          width:  screenWidth,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // Top Planet Decoration
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
        Positioned(
          top: 0,
          bottom: isMobile ? 60 : isTablet ? 60:  60,
          right: isMobile ?150 : isTablet ? 250: 380,
          child: Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.8,
              child: Image.asset(
                'assets/images/Vector (2).png',
                width: isMobile ? 250 : isTablet ? 300 : 450,
                height: isMobile ? 250 : isTablet ? 300 : 450,
                fit: BoxFit.contain,
                //color: Colors.amber[800],
              ),
            ),
          ),
        ),

      Padding(
        padding: EdgeInsets.symmetric(horizontal:  isMobile ? 16 : isTablet ? 40 : 200.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SCHEDULE A SESSION WITH THE\nASTROLOGER",
              style: TextStyle(fontSize: ResponsiveFontsize.fontSize(
                context, mobile: 20, tablet: 30, desktop: 40), fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Astrologer Info
            Row(
              children: [
                // Profile Image
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orange, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset('assets/images/vastupooja7.png', fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: Sreehari", style: TextStyle(fontSize: 16)),
                    Text("Experience: 15+ Years Experience", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Purpose + Duration
            Row(
              children: [
                buildTextField("Purpose", "Career", fullNameController),
                const SizedBox(width: 20),
                buildTextField("Duration", "30 Minutes", experienceController),
              ],
            ),
            const SizedBox(height: 15),

            // Date + Time
            Row(
              children: [
                buildTextField("Date", "2025-06-15", preferredDateController),
                const SizedBox(width: 20),
                buildTextField("Time", "10:00 AM", timeController),
              ],
            ),
            const SizedBox(height: 15),

            // Contact Type + Language
            Row(
              children: [
                buildTextField("Contact Type", "Chat", consultationModeController),
                const SizedBox(width: 20),
                buildTextField("Language", "Telugu", serviceController),
              ],
            ),
            const SizedBox(height: 15),

            // Price + Promo
            Row(
              children: [
                buildTextField("Session Price", "\$999", poojaChargesController),
                const SizedBox(width: 20),
                buildTextField("Discount / Promo", "", totalCostController),
              ],
            ),

            const SizedBox(height: 50),
            const Text("User Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            const SizedBox(height: 20),
            Row(
              children: [
                buildTextField("Name", "Amith Sharma", customerNameController),
                const SizedBox(width: 20),
                buildTextField("Contact", "9090909094", contactNumberController),
              ],
            ),
            const SizedBox(height: 15),
             Row(
              children: [
                buildTextField("Email", "Enter Your Email", emailController),
                const SizedBox(width: 10),
                const Expanded(child: SizedBox()), // Keeps the layout aligned
              ],
            ),

            const SizedBox(height: 50),
            const Text("Total Amount", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
             Row(
              children: [
                buildTextField("Session Price", "\$999", TextEditingController()),
                const SizedBox(width: 10),
                const Expanded(child: SizedBox()), // Keeps the layout aligned
              ],
            ),
           

            const SizedBox(height: 60),

            // Proceed Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDC9323),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    context.go('/chart_payment_method');
                  },
                  child: const Text("Proceed To Payment", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

}

