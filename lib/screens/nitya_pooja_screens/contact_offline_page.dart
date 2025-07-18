import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class ContactOfflinePage extends StatefulWidget {
  const ContactOfflinePage({super.key});

  @override
  State<ContactOfflinePage> createState() => _ContactOfflinePageState();
}

class _ContactOfflinePageState extends State<ContactOfflinePage> {
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

      // 🧾 Main Content
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact Us for Offline Booking",
              style: TextStyle(
                fontSize: 32,
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
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Offline Nithya Pooja Booking Process',),
                  const SizedBox(height: 30),
                  // 📞 Contact Info Row
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Row(
                          children: [
                            Icon(Icons.phone, color: Colors.green),
                            SizedBox(width: 10),
                            Text("Call / WhatsApp  :  +91-XXXXXXXXXX"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.email, color: Colors.red),
                            SizedBox(width: 10),
                            Text("Email (Optional)  :  "),
                            Text(
                              "bookings@yourpoojaservice.com",
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.access_time, color: Colors.orange),
                            SizedBox(width: 10),
                            Text("Service Hours  :  8:00 AM – 9:00 PM  |  All Days"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // 🧭 Booking Process
                  const Text(
                    "How Offline Booking Works:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  const Text("1. Call or Message Us with your nithya puja type, location, date,\n    and language preference."),
                  const Text("2. Our Team Confirms Availability and helps you choose the right\n    package."),
                  const Text("3. Pay Amount (Optional) to confirm your slot."),
                  const Text("4. Receive Booking Confirmation via WhatsApp/SMS."),

                  const SizedBox(height: 30),

                  // 💬 Why Book Offline
                  const Text(
                    "Why Book Offline?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  buildBullet("Speak directly with our team"),
                  buildBullet("Personalized assistance"),
                  buildBullet("Easy for elders or non-digital users"),
                  buildBullet("Immediate confirmation & guidance"),
                  const SizedBox(height: 80),
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
    padding: const EdgeInsets.symmetric(vertical: 3.0),
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