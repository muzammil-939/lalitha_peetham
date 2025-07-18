import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class ReviwCheckOutPage extends StatefulWidget {
  const ReviwCheckOutPage({super.key});

  @override
  State<ReviwCheckOutPage> createState() => _ReviwCheckOutPageState();
}

class _ReviwCheckOutPageState extends State<ReviwCheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildherosection(),
            buildConfirmSection(),
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
                "Find the Perfect Pooja Service Tailored\nto Your Spiritual Needs",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
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
          height: 500, // Adjust height
          width: 1500,  // Adjust width
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
              "Review checkout",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            // Yellow Container
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color(0xFFE9BD3F),
                borderRadius: BorderRadius.circular(4),
              ),
              child: 
              Stack(
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
                  const Text('User Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  buildBullet('Full Name: Ramesh Sharma'),
                  buildBullet('Contact Number: +91 9876543210'),
                  buildBullet('Email Address: ramesh.sharma@example.com'),
                  buildBullet('Gotra: Bharadwaj'),
                  buildBullet('Preferred Start Date: 2025-07-20'),
                  buildBullet('Purpose of Pooja: Health and Prosperity'),
                  buildBullet('Location: Hyderabad, Telangana'),
                  buildBullet('Language: Telugu'),
                  buildBullet('Time: 09:30 AM'),
                  buildBullet('Star: Rohini'),
                  buildBullet('Place of Birth: Visakhapatnam'),
                  buildBullet('Date of Birth: 1990-08-15'),

                  const SizedBox(height: 20),
                  const Text('Spouse Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  buildBullet('Name: Anjali Sharma'),
                  buildBullet('Date of Birth: 1992-03-10'),
                  buildBullet('Time: 10:45 AM'),
                  buildBullet('Star: Revati'),
                  buildBullet('Marriage Date: 2015-12-05'),

                  const SizedBox(height: 20),
                  const Text('Children Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  buildBullet('Name: Aarav Sharma'),
                  buildBullet('Date of Birth: 2018-06-25'),
                  buildBullet('Time: 06:30 AM'),
                  buildBullet('Star: Ashwini'),
                  buildBullet('Place of Birth: Hyderabad'),
                  buildBullet('Upload Image: (Any sample image can be uploaded)'),

                  const SizedBox(height: 80),

                  // Back and Continue buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFCDCDCD),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        ),
                        child: const Text("Back", style: TextStyle(color: Colors.black)),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/nityapooja_payment_page');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          ),
                          child: const Text("Continue", style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                ]
              )
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildBullet(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
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
