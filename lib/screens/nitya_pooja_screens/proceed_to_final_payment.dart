import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ProceedToFinalPayment extends StatefulWidget {
  const ProceedToFinalPayment({super.key});

  @override
  State<ProceedToFinalPayment> createState() => _ProceedToFinalPaymentState();
}

class _ProceedToFinalPaymentState extends State<ProceedToFinalPayment> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildConfirmPaymentSection(context),

          ],
        ),
      ),
    );
  }
    Widget buildherosection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text("Menu", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children:  [
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
      // Outer full-screen background image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 500, // Adjust height
          width: 1500,  
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // Top-right planet image
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
              "Proceed to Final Payment",
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
              // Inner container background image
              Center(
               
                child: Opacity(
                  opacity: 0.1, // Adjust for subtle watermark effect
                  child: SizedBox(
                   height: imageBoxSize,
                        width: imageBoxSize,
                    child: Image.asset(
                      'assets/images/vector (2).png', // Make sure path is correct
                      fit: BoxFit.cover,
                      color: Colors.white,
                      // height: 50,
                      // width: 50,
                    ),
                  ),
                ),
              ),
         
              // Foreground content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  const SizedBox(height: 20),
                  const Text(
                    "Selected Plan: e.g., Monthly Basic / Annual Premium\n"
                    "Deity/Temple: e.g., Lord Ganesha – Siddhi Vinayak Temple\n"
                    "Amount: ₹XXXX (including GST if any)\n"
                    "Subscription Duration: e.g., 30 days / 1 year\n"
                    "Prasadam Delivery: Yes/No (included or extra)",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(height: 30,),
                  const Divider(height: 30, color: Colors.black87),
                  SizedBox(height: 60,),
         
                   Text(
                    "Payment Method",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize:contentFontSize),
                  ),
                  const SizedBox(height: 15),
         
                  buildPaymentMethodButton('assets/images/vastupooja12.png', 'PayPal  Payment'),
                  buildPaymentMethodButton('assets/images/vastupooja13.png', 'GPay  Payment'),
                  buildPaymentMethodButton('assets/images/vastupooja14.png', 'Paytm  Payment'),
                  buildPaymentMethodButton('assets/images/vastupooja15.png', 'Credit/Debit  Payment'),
         
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              context.go('/nityapooja_renewal_cmplt_page');
                            },
                           
                          ),
                    ],
                  ),
                ],
              ),
            ],
          ),
         ),
          ]
        )
      )
    ],
  );
}
Widget buildPaymentMethodButton(String logoAsset, String text) {
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
        Image.asset(logoAsset, height: 25),
        const SizedBox(width: 15),
        Text(text, style: const TextStyle(fontSize: 16)),
      ],
    ),
  );
}
}