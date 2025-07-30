import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GsCmpltFinalPayment extends StatefulWidget {
  const GsCmpltFinalPayment({super.key});

  @override
  State<GsCmpltFinalPayment> createState() => _GsCmpltFinalPaymentState();
}

class _GsCmpltFinalPaymentState extends State<GsCmpltFinalPayment> {
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

  return Stack(
    children: [
      // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: isMobile ? 250 : (isTablet ? 400 : 500),
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 🪐 Planet Top Right
      Positioned(
        top: isMobile ? 20 : 40,
        right: isMobile ? 16 : 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 40 : 60,
          width: isMobile ? 40 : 60,
        ),
      ),

      // 🧾 Main Content
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 16 : (isTablet ? 40 : 150),
          vertical: isMobile ? 24 : 60,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Confirm Your Booking with Final Payment",
                style: TextStyle(
                  fontSize: isMobile ? 20 : 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
              const SizedBox(height: 30),

              // 💳 Payment Container
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFEAC63E),
                ),
                child: Stack(
                  children: [
                    // 🖼 Watermark Image
                    Center(
                      child: Opacity(
                        opacity: 0.1,
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

                    // 📦 Content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),

                        // 🛍 Cart Item
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: isMobile
                              ? Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: double.infinity,
                                      margin: const EdgeInsets.only(bottom: 16),
                                      color: const Color(0xFFE4C74D),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/gemstone3.png',
                                          width: 90,
                                          height: 90,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    buildItemDetails(),
                                  ],
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 150,
                                      width: isTablet ? 180 : 250,
                                      margin: const EdgeInsets.all(16),
                                      color: const Color(0xFFE4C74D),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/gemstone3.png',
                                          width: 90,
                                          height: 90,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(child: buildItemDetails()),
                                  ],
                                ),
                        ),

                        const SizedBox(height: 30),
                        const Divider(height: 30, color: Colors.black87),
                        const SizedBox(height: 30),

                        const Text(
                          "Payment Method",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        const SizedBox(height: 15),

                        buildPaymentMethodButton('assets/images/vastupooja12.png', 'PayPal Payment'),
                        buildPaymentMethodButton('assets/images/vastupooja13.png', 'GPay Payment'),
                        buildPaymentMethodButton('assets/images/vastupooja14.png', 'Paytm Payment'),
                        buildPaymentMethodButton('assets/images/vastupooja15.png', 'Credit/Debit Payment'),

                        const SizedBox(height: 25),

                        Row(
                          mainAxisAlignment: isMobile
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFCDCDCD),
                                padding: EdgeInsets.symmetric(
                                  horizontal: isMobile ? 20 : 30,
                                  vertical: isMobile ? 10 : 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text("Back", style: TextStyle(color: Colors.black)),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(
                                  horizontal: isMobile ? 20 : 30,
                                  vertical: isMobile ? 10 : 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                context.go('/gemstone_booking_confirm');
                              },
                              child: const Text("Continue"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}

Widget buildItemDetails() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Durga Ammavaru Idol',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
      const SizedBox(height: 4),
      const Row(
        children: [
          Text(
            '₹300',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 8),
          Text(
            '₹200',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      // 🧾 Quantity Dropdown
      SizedBox(
        height: 36,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Color(0xFFE2C164),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: 'Quantity',
              items: [
                DropdownMenuItem(
                  value: 'Quantity',
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Quantity'),
                  ),
                ),
              ],
              onChanged: (_) {},
              icon: Icon(Icons.keyboard_arrow_down),
            ),
          ),
        ),
      ),
      const SizedBox(height: 12),
      const Text('Idol Price: ₹200'),
      const Text('Delivery Cost: ₹30'),
      const Text(
        'Total Cost: ₹230',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      const SizedBox(height: 16),
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