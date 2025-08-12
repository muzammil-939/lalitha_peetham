import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_layout.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class NityapoojaPaymentPage extends StatefulWidget {
  const NityapoojaPaymentPage({super.key});

  @override
  State<NityapoojaPaymentPage> createState() => _NityapoojaPaymentPageState();
}

class _NityapoojaPaymentPageState extends State<NityapoojaPaymentPage> {

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
            buildConfirmPaymentSection(context),

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
              SizedBox(height: 80,),
              Text(
                "Find the Perfect Pooja Service Tailored\nto Your Spiritual Needs",
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



Widget buildConfirmPaymentSection(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;
  final isTablet = screenWidth >= 600 && screenWidth < 1100;
  final isDesktop = screenWidth >= 1100;

  double horizontalPadding = isDesktop ? 150 : isTablet ? 60 : 16;
  double headingFontSize = isDesktop ? 32 : isTablet ? 26 : 20;
  double contentFontSize = isDesktop ? 14 : isTablet ? 13 : 12;
  double logoSize = isMobile ? 20 : 25;
  double imageBoxSize = isMobile ? 300 : 500;

  return Stack(
    children: [
      // Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // Top-right Planet
      Positioned(
        top: isMobile ? 20 : 40,
        right: isMobile ? 10 : 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 40 : 60,
          width: isMobile ? 40 : 60,
        ),
      ),

      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm Your Booking with Final Payment",
              style: TextStyle(
                fontSize: headingFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFEAC63E),
              ),
              child: Stack(
                children: [
                  // Watermark Background
                  Center(
                    child: Opacity(
                      opacity: 0.1,
                      child: SizedBox(
                        height: imageBoxSize,
                        width: imageBoxSize,
                        child: Image.asset(
                          'assets/images/vector (2).png',
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  // Foreground Payment Content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Selected Plan: Monthly Basic / Annual Premium\n"
                        "Deity/Temple: Lord Ganesha – Siddhi Vinayak Temple\n"
                        "Amount: ₹XXXX (including GST if any)\n"
                        "Subscription Duration: 30 days / 1 year\n"
                        "Prasadam Delivery: Yes/No (included or extra)",
                        style: TextStyle(fontSize: contentFontSize),
                      ),
                      const SizedBox(height: 30),
                      const Divider(height: 30, color: Colors.black87),
                      const SizedBox(height: 30),

                      Text(
                        "Payment Method",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: contentFontSize,
                        ),
                      ),
                      const SizedBox(height: 15),

                      buildPaymentMethodButton('assets/images/vastupooja12.png', 'PayPal Payment', logoSize, contentFontSize),
                      buildPaymentMethodButton('assets/images/vastupooja13.png', 'GPay Payment', logoSize, contentFontSize),
                      buildPaymentMethodButton('assets/images/vastupooja14.png', 'Paytm Payment', logoSize, contentFontSize),
                      buildPaymentMethodButton('assets/images/vastupooja15.png', 'Credit/Debit Payment', logoSize, contentFontSize),

                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ResponsiveButton(
                            text: "Back",
                            textColor: Colors.black,
                              backgroundColor: const Color(0xFFCDCDCD),                           
                            onPressed: () {},
                            
                          ),
                          const SizedBox(width: 20),
                          ResponsiveButton(
                            text: 'Continue',
                            textColor: Colors.black,                         
                            backgroundColor: Colors.white,                        
                            onPressed: () {
                              context.go('/nityapooja_confirm_page');
                            },
                           
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildPaymentMethodButton(String logoAsset, String text, double logoSize, double fontSize) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
    ),
    height: 50,
    child: Row(
      children: [
        Image.asset(logoAsset, height: logoSize),
        const SizedBox(width: 15),
        Text(text, style: TextStyle(fontSize: fontSize)),
      ],
    ),
  );
}
}