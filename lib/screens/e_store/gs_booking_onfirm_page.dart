import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GsBookingOnfirmPage extends StatefulWidget {
  const GsBookingOnfirmPage({super.key});

  @override
  State<GsBookingOnfirmPage> createState() => _GsBookingOnfirmPageState();
}

class _GsBookingOnfirmPageState extends State<GsBookingOnfirmPage> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
         child: SingleChildScrollView(
          child: 
          Column(
            children: [
              buildHeroSection() ,
              buildConfirmPaymentSection(context),
            ],
          ),
         ),
    );
  }


    Widget buildHeroSection() {
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
              Text(
                "Menu",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: [
              Text(
                " Complete Your Spiritual Shopping",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context, mobile: 20, tablet: 30, desktop: 40),
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
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  final double horizontalPadding = isMobile
      ? 16
      : isTablet
          ? 50
          : 150;

  final double titleFontSize = isMobile
      ? 20
      : isTablet
          ? 24
          : 28;

  final double imageHeight = isMobile ? 200 : 500;
  final double imageWidth = isMobile ? double.infinity : 1500;

  return Stack(
    children: [
      // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: imageHeight,
          width: imageWidth,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 🪐 Top-right Planet
      Positioned(
        top: 40,
        right: 30,
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
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            Container(
              padding: EdgeInsets.all(isMobile ? 16 : 30),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  // 🔆 Watermark background image
                  Center(
                    child: Opacity(
                      opacity: 0.08,
                      child: SizedBox(
                        height: isMobile ? 250 : 550,
                        width: isMobile ? 250 : 550,
                        child: Image.asset(
                          'assets/images/vector (2).png',
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 💠 Item card
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: isMobile
                            ? Column(
                                children: [
                                  Image.asset(
                                    'assets/images/gemstone3.png',
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 12),
                                  buildProductDetails(isMobile),
                                ],
                              )
                            : Row(
                                children: [
                                  Container(
                                    height: 180,
                                    width: 250,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE4C74D),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/gemstone3.png',
                                        width: 90,
                                        height: 90,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(child: buildProductDetails(isMobile)),
                                ],
                              ),
                      ),

                      const SizedBox(height: 30),
                      const Divider(height: 30, color: Colors.white),
                      const SizedBox(height: 20),

                      // ✅ Booking Details
                      const Text(
                        "✅ Booking Confirmed",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 12),
                      const Text("• Item: Durga Ammavaru Idol (Medium size, fiber)"),
                      const Text("• Idol Price: ₹300"),
                      const Text("• Delivery Charges: ₹30"),
                      const Text("• Total Amount: ₹330"),
                      const Text("• Delivery Date: 24th June 2025"),
                      const Text("• Status: Confirmed & Processing"),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Text("📦 Track Your Order: "),
                          Text(
                            "Click Here to Track",
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      )
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

// 👇 Helper to build product detail column
Widget buildProductDetails(bool isMobile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text(
        'Durga Ammavaru Idol',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
      SizedBox(height: 4),
      Row(
        children: [
          Text(
            '300 ',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
            ),
          ),
          Text(
            '200',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
      SizedBox(height: 10),
      Text('Idol Price: ₹200'),
      Text('Delivery Cost: ₹30'),
      Text(
        'Total Cost: ₹230',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}

}