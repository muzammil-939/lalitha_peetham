import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class NityapoojaRenewalCmpltPage extends StatefulWidget {
  const NityapoojaRenewalCmpltPage({super.key});

  @override
  State<NityapoojaRenewalCmpltPage> createState() => _NityapoojaRenewalCmpltPageState();
}

class _NityapoojaRenewalCmpltPageState extends State<NityapoojaRenewalCmpltPage> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildConfirmSection() ,

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
            children: const [
              Text(
                "Booking Confirmed track your\npooja",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
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

 Widget buildConfirmSection() {
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

      // 🪐 Planet Image
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),

      // 📄 Main Content
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "✅📄 Renewal Completed – Nithya Pooja",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            // 🟡 Yellow Container
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  // Watermark Astrological Circle
                  Center(
                    child: Opacity(
                      opacity: 0.1,
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

                  // 📑 Main Text Content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "✅ Booking Confirmation",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text("🎉 Your Nithya Pooja is Successfully Booked!"),
                      const Text(
                          "Thank you for subscribing to our Nithya Pooja service. Here's what you will receive:"),
                      const SizedBox(height: 30),

                      // 📿 Pooja Details
                      const Text("Pooja Details",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      buildBullet("Pooja Type: Lakshmi Nithya Pooja"),
                      buildBullet("Temple/Deity: Sree Lalitha Peetham"),
                      buildBullet("Renewal Duration: 30 Days"),
                      buildBullet("New Start Date: 21 June 2025"),
                      buildBullet("End Date: 20 July 2025"),

                      const SizedBox(height: 30),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),

                      // 💳 Payment Details
                      const Text("Payment Details",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      buildBullet("Amount Paid: ₹999"),
                      buildBullet("Transaction ID: TXN8493021"),
                      buildBullet("Payment Mode: UPI"),
                      buildBullet("Payment Status: ✅ Success"),
                      buildBullet("Date & Time: 18 June 2025, 5:10 PM"),

                      const SizedBox(height: 30),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 20),

                      // 🛕 Final Message
                      const Text(
                          "🙏 Thank you for renewing your Nithya Pooja.\nYour daily pooja will continue without interruption.\nYou will receive daily updates via SMS/WhatsApp.\n📞 For any help, contact our support team: +91-XXXXXXXXXX"),

                      const SizedBox(height: 50),

                      // 🧾 Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // TODO: Add download logic
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCDCDCD),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 12),
                            ),
                            child: const Text(
                              "Download Details",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              // TODO: Navigate to home
                              context.go('/poojas_page');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 12),
                            ),
                            child: const Text(
                              "Home",
                              style: TextStyle(color: Colors.black),
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

// ✅ Bullet Point Builder
Widget buildBullet(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• ", style: TextStyle(fontSize: 16)),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
      ],
    ),
  );
}


}