import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ChartPaymentMethod extends StatefulWidget {
  const ChartPaymentMethod({super.key});

  @override
  State<ChartPaymentMethod> createState() => _ChartPaymentMethodState();
}

class _ChartPaymentMethodState extends State<ChartPaymentMethod> {
 
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
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
             buildChartPaymentMethod(context),
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
            children:  [
              
              Text(
                "Complete the payment to confirm your\nbooking",
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

  

  Widget buildSectionTitle(BuildContext context, String title) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: isMobile ? 20 : 24),
      ),
    );
  }

  Widget buildPaymentButton(BuildContext context, String logoAsset, String text) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(6),
        ),
        height: 50,
        width: isMobile ? double.infinity : 800,
        child: Row(
          children: [
            Image.asset(logoAsset, height: 25),
            const SizedBox(width: 15),
            Text(text, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget buildChartPaymentMethod(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final padding = isMobile ? 16.0 : isTablet ? 100.0 : 200.0;

    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: 350,
            width: ResponsiveHelper.screenWidth(context),
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: isMobile ? 10 : 30,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: isMobile ? 40 : 60,
            width: isMobile ? 40 : 60,
          ),
        ),
        Positioned(
          top: 150,
          bottom: 0,
          right: isMobile ? 100 : 450,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/Vector (2).png',
              width: isMobile ? 180 : 300,
              height: isMobile ? 180 : 300,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                buildSectionTitle(context, "PAYMENT METHOD"),
                const SizedBox(height: 20),
               
                const SizedBox(height: 10),
                buildPaymentButton(context, 'assets/images/vastupooja12.png', 'UPI'),
                buildPaymentButton(context, 'assets/images/vastupooja13.png', 'Credit Card'),
                buildPaymentButton(context, 'assets/images/vastupooja14.png', 'Debit Card'),
                buildPaymentButton(context, 'assets/images/vastupooja15.png', 'Net Banking'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffDC9323),
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        context.go('/chart_booking_confirmed_page');
                      },
                      child: const Text("Pay", style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

