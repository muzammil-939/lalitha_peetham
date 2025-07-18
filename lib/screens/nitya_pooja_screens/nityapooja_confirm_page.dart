import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class NityapoojaConfirmPage extends StatefulWidget {
  const NityapoojaConfirmPage({super.key});

  @override
  State<NityapoojaConfirmPage> createState() => _NityapoojaConfirmPageState();
}

class _NityapoojaConfirmPageState extends State<NityapoojaConfirmPage> {
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
      // Background Image
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

      // Planet Image (Top-right)
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),

      // Main Content
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Subscription confirmed",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            // Yellow Container
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  
                Center(             
                child: Opacity(
                  opacity: 0.1, // Adjust for subtle watermark effect
                  child: SizedBox(
                    height: 550,
                    width: 550,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ✅ Booking confirmation
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("✅ Booking Confirmation", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("🎉 Your Nithya Pooja is Successfully Booked!"),
                      Text("Thank you for subscribing to our Nithya Pooja service. Here's what you will receive:"),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // Pooja Start Date & Time
                  const Text("Pooja Start Date & Time", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  Divider(color: Colors.white,),
                  const SizedBox(height: 20),
                  buildBullet("Your daily pooja will begin from:\nStart Date: DD-MM-YYYY"),
                  buildBullet("Time: Usually performed during morning hours (6 AM – 10 AM or based on temple schedule)"),
                  buildBullet("You'll be notified daily once the pooja is completed."),

                  const SizedBox(height: 40),

                  // Subscription Package
                  const Text("Subscription Package Details", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  Divider(color: Colors.white,),
                  const SizedBox(height: 20),
                  buildBullet("Selected Plan: e.g., Monthly Premium Plan"),
                  buildBullet("Duration: e.g., 30 Days"),
                  buildBullet("Includes: Sankalpam, daily pooja, prasadam delivery, live link (as per plan)"),

                  const SizedBox(height: 40),

                  // Frequency
                  const Text("Daily Pooja Duration & Frequency", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  Divider(color: Colors.white,),
                  const SizedBox(height: 20),
                  buildBullet("Frequency: Daily (Nithya Pooja – 7 days a week)"),
                  buildBullet("Duration: Each pooja lasts around 15–30 minutes, including sankalpam, archana, and offerings"),
                  buildBullet("Your name and details will be included in each daily pooja"),

                  const SizedBox(height: 40),

                  // Next Step
                  const Text("Next Step", style: TextStyle(fontWeight: FontWeight.bold)),
                 const SizedBox(height: 15),
                  Divider(color: Colors.white,),
                  const SizedBox(height: 20),
                  buildBullet("A Confirmation Message Has Been Sent To Your Email And WhatsApp With All Puja Details"),

                  const SizedBox(height: 80),

                  // Action Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Download logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFCDCDCD),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                        ),
                        child: const Text("Download Details", style: TextStyle(color: Colors.black)),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to home
                          context.go('/poojas_page');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                        ),
                        child: const Text("Home", style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
                ]
            ),
            ) 
          ],
          
        ),
      ),
    ],
  );
}

// Bullet Point Builder
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