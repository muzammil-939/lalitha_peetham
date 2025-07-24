import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

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
            children: const [
              Text(
                " Complete Your Spiritual Shopping",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
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
  return Stack(
    children: [
      // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 500,
          width: 1500,
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
          height: 60,
          width: 60,
        ),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Confirm Your Booking with Final Payment",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  // 🔆 Background watermark image
                  Center(
                    child: Opacity(
                      opacity: 0.08,
                      child: SizedBox(
                        height: 550,
                        width: 550,
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
                      // 💠 White container with item image and pricing
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Row(
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Durga Ammavaru Idol',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
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
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text('Idol Price: ₹200'),
                                  Text('Delivery Cost: ₹30'),
                                  Text(
                                    'Total Cost: ₹230',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

}