import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class AstrologersPaymentMethod extends StatefulWidget {
  const AstrologersPaymentMethod({super.key});

  @override
  State<AstrologersPaymentMethod> createState() => _AstrologersPaymentMethodState();
}

class _AstrologersPaymentMethodState extends State<AstrologersPaymentMethod> {

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
             buildAstrologersPaymentMethod(context),
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
          top: isMobile  ? 80 : 120,
          child: Column(
            children: [
              
              Text(
                "Complete the payment to confirm your\nbooking",
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
              'assets/images/online_pooja2.jpg',
              height: isMobile ? 100 : isTablet ? 120 : 180,
               width: isMobile ? 150 : isTablet ? 180 : 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

Widget buildTextField(BuildContext context, String label, String hint, TextEditingController controller) {
  double fontSize = ResponsiveHelper.isMobile(context) ? 14 : 16;
  double verticalPadding = ResponsiveHelper.isMobile(context) ? 8 : 12;

  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize)),
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
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: verticalPadding),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget buildSingleField(String label, String hint, TextEditingController controller) {
    return Column(
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
    );
  }

  Widget buildSectionTitle(BuildContext context, String title) {
  double fontSize = ResponsiveHelper.isMobile(context) ? 18 : 24;
  double vertical = ResponsiveHelper.isMobile(context) ? 12 : 20;

  return Padding(
    padding: EdgeInsets.symmetric(vertical: vertical),
    child: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
    ),
  );
}

 Widget buildPaymentButton(BuildContext context, String logoAsset, String text) {
  double height = ResponsiveHelper.isMobile(context) ? 40 : 45;
  double fontSize = ResponsiveHelper.isMobile(context) ? 14 : 16;
  double iconSize = ResponsiveHelper.isMobile(context) ? 20 : 25;

  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(6),
    ),
    height: height,
    child: Row(
      children: [
        Image.asset(logoAsset, height: iconSize),
        const SizedBox(width: 15),
        Text(text, style: TextStyle(fontSize: fontSize)),
      ],
    ),
  );
}


  Widget buildAstrologersPaymentMethod(BuildContext context) {
  double sidePadding = ResponsiveHelper.isMobile(context) ? 16 : 200;
  double imageHeight = ResponsiveHelper.isMobile(context) ? 200 : 350;
  double bgVectorWidth = ResponsiveHelper.isMobile(context) ? 200 : 500;
  final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
  

  return Stack(
    children: [
      // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: imageHeight,
          width: ResponsiveHelper.screenWidth(context),
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 🪐 Planet Image
      Positioned(
        top: ResponsiveHelper.isMobile(context) ? 20 : 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: ResponsiveHelper.isMobile(context) ? 40 : 60,
          width: ResponsiveHelper.isMobile(context) ? 40 : 60,
        ),
      ),

      // Background Vector
      Positioned(
        top: 0,
        bottom: isMobile ? 200 : isTablet ? 60:  100,
        right: ResponsiveHelper.isMobile(context) ? 150 : 380,
        child: Opacity(
          opacity: 0.8,
          child: Image.asset(
            'assets/images/Vector (2).png',
            width: bgVectorWidth,
            height: bgVectorWidth,
            fit: BoxFit.contain,
          ),
        ),
      ),
    
    Padding(
           padding:  EdgeInsets.symmetric(horizontal:sidePadding),
           child: SingleChildScrollView(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ResponsiveHelper.isMobile(context) ? 40 : 80),
              buildSectionTitle(context, "Astrologer Details"),
                Row(
                  children: [
                    buildTextField(context,"Full Name", "Enter Astrologer Name", fullNameController),
                    const SizedBox(width: 10),
                    buildTextField(context,"Experience", "e.g. 15 Years", experienceController),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    buildTextField(context,"Service", "e.g. Vastu Pooja", serviceController),
                    const SizedBox(width: 10),
                    buildTextField(context,"Consultation Mode", "e.g. Video Call", consultationModeController),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    buildTextField(context,"Preferred Date", "YYYY-MM-DD", preferredDateController),
                    const SizedBox(width: 10),
                    buildTextField(context,"Time", "e.g. 10:00 AM", timeController),
                  ],
                ),
                buildSectionTitle(context,"Customer Details"),
                Row(
                  children: [
                    buildTextField(context,"Full Name", "Enter Your Name", customerNameController),
                    const SizedBox(width: 10),
                    buildTextField(context,"Contact Number", "Enter Mobile Number", contactNumberController),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                children: [
                  buildTextField(context,"Email", "Enter Your Email", emailController),
                  const SizedBox(width: 10),
                  const Expanded(child: SizedBox()), // Keeps the layout aligned
                ],
              ),
              const SizedBox(height: 45),
             
                buildSectionTitle(context,"Payment Summary"),
                Row(
                  children: [
                    buildTextField(context,"Pooja Charges", "₹1000", poojaChargesController),
                    const SizedBox(width: 10),
                    buildTextField(context,"Total Cost", "₹1000", totalCostController),
                  ],
                ),
             
                const SizedBox(height: 45),
             
                buildSectionTitle(context,"PAYMENT MEETHOD"),
                buildPaymentButton(context,'assets/images/vastupooja12.png', 'Payment'),
                buildPaymentButton(context,'assets/images/vastupooja13.png', 'Payment'),
                buildPaymentButton(context,'assets/images/vastupooja14.png', 'Payment'),
                buildPaymentButton(context,'assets/images/vastupooja15.png', 'Payment'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffDC9323),
                        foregroundColor: Colors.black,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // Handle pay logic
                        context.go('');
             
                      },
                      child: const Text("Pay", style: TextStyle(fontSize: 16)),
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
}

