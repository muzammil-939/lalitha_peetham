import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_layout.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class NityapoojaRenewalDeatils extends StatefulWidget {
  const NityapoojaRenewalDeatils({super.key});

  @override
  State<NityapoojaRenewalDeatils> createState() => _NityapoojaRenewalDeatilsState();
}

class _NityapoojaRenewalDeatilsState extends State<NityapoojaRenewalDeatils> {

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
    return NityapoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
           // buildherosection(),
            buildTitleSection(context),
            SizedBox(height: 40,),
            //buildRenewaldetails()

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
                "Booking Confirmed track your\npooja",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context,
                    desktop: 45,
                    tablet: 30,
                    mobile: 20
                  ), 
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
              'assets/images/vastupooja16.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
Widget buildTitleSection(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;

  return LayoutBuilder(
    builder: (context, constraints) {
      final isMobile = constraints.maxWidth < 600;
      final horizontalPadding = isMobile ? 20.0 : 100.0;
      final imageHeight = isMobile ? 250.0 : 500.0;
      final titleFontSize = isMobile ? 22.0 : 45.0;
      final logoSize = isMobile ? 60.0 : 100.0;
      final topPadding = isMobile ? 40.0 : 120.0;

      return Stack(
        children: [
          Positioned(
            child: SizedBox(
              width: double.infinity,
              height: imageHeight,
              child: Image.asset(
                'assets/images/vastupooja4.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: topPadding,
            right: horizontalPadding,
            child: Image.asset(
              'assets/images/vastupooja11.png',
              height: logoSize,
              width: logoSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  "Nithya Pooja Renewal Details",
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 40),
                buildRenewaldetails(context),
              ],
            ),
          ),
        ],
      );
    },
  );
}
Widget buildRenewaldetails(BuildContext context,) {
  final screenWidth = MediaQuery.of(context).size.width;

  return LayoutBuilder(
    builder: (context, constraints) {
      final isMobile = constraints.maxWidth < 600;
      final isTablet = constraints.maxWidth < 900;

      return Container(
        margin: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 100, vertical: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFEAC63E),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Responsive TOP Row or Column
              Flex(
                direction: isTablet ? Axis.vertical : Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 🖼 Image
                  Image.asset(
                    'assets/images/durga.jpg',
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 12, width: 20),
                  // ℹ️ Temple Info Texts
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Temple: Tirumala Balaji Temple", style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text("Performed By: Pandit Ravi Kumar"),
                        SizedBox(height: 4),
                        Text("Duration: 30 Days"),
                        SizedBox(height: 4),
                        Text("Time: Daily at 6:00 AM"),
                        SizedBox(height: 4),
                        Text("Purpose: Family Peace & Health"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  // ✏️ Button
                  Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFEAC63E)),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                      ),
                      onPressed: () {},
                      child: const Text("Edit Information", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // 💰 Price Options - Wrap
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAC63E),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text("30 Days – ₹1999", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text("3 Months – ₹4999"),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text("1 Year – ₹8999"),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // 📝 Renewal Info
              const Text("Renewal Options", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("• Renew for:"),
              const Text("• Start Date:  Choose calendar"),
              const Text("• Deity/Temple:  Sree Lalitha Peetham"),

              const SizedBox(height: 30),

              // ✅ Continue Button
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEAC63E),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/nityapooja_proceed_final_payment');
                  },
                  child: const Text("Continue", style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


}