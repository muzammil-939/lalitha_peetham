import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PoojaServiceConfirmPage extends StatefulWidget {
  const PoojaServiceConfirmPage({super.key});

  @override
  State<PoojaServiceConfirmPage> createState() => _PoojaServiceConfirmPageState();
}

class _PoojaServiceConfirmPageState extends State<PoojaServiceConfirmPage> {
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
            children:  [
              Text(
                "YOUR POOJA SERVICE IS CONFIRMED. CHECK YOUR\nEMAIL/SMS FOR DETAILS",
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
              'assets/images/online_pooja2.jpg',
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
      final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;
  final isTablet = screenWidth >= 600 && screenWidth < 1100;
  final isDesktop = screenWidth >= 1100;

  final horizontalPadding = isDesktop ? 150.0 : isTablet ? 60.0 : 16.0;
  final titleFontSize = isDesktop ? 28.0 : isTablet ? 24.0 : 20.0;
  final bulletFontSize = isMobile ? 14.0 : 16.0;
  final backgroundImageHeight = isMobile ? 350.0 : 500.0;
  final planetSize = isMobile ? 40.0 : 60.0;
  final watermarkSize = isMobile ? 300.0 : 550.0;
  final spacing = isMobile ? 20.0 : 40.0;

  return Stack(
    children: [
      // 🌄 Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // 🪐 Planet Image (Top-right)
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: planetSize,
          width: planetSize,
        ),
      ),

      // 📋 Main Content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ OUTSIDE HEADING
             Text(
              "Your pooja service is confirmed. Check your\nemail/SMS for details",
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            // 📦 Yellow Box
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color(0xFFE9BD3F),
                borderRadius: BorderRadius.circular(0),
              ),
              child:Stack(
                children: [
                  // Watermark Astrological Circle
                  Center(
                    child: Opacity(
                      opacity: 0.1,
                      child: SizedBox(
                       height: watermarkSize,
                        width: watermarkSize,
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
                  Row(
                    children: const [
                      Icon(Icons.check_box, color: Colors.green),
                      SizedBox(width: 8),
                      Text(
                        'Pooja Booking Confirmation',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Thank You, Ramesh Kumar, For Booking With Sree Lalitha Peetham!\n'
                    'Your Customized E-Pooja Has Been Successfully Scheduled. Below Are Your Booking Details',
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 20),
                  const Text('📄 Pooja Summary', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 8),
                  buildBullet('Pooja Name: Satyanarayan Pooja'),
                  buildBullet('Occasion: House Warming'),
                  buildBullet('Deity: Lord Vishnu'),
                  buildBullet('Purpose: Prosperity And Family Well-Being'),
                  buildBullet('Language: Telugu'),
                  buildBullet('Ritual Type: Simple'),
                  buildBullet('Gotra: Bharadwaja'),
                  buildBullet('Family Members: 5 Members'),

                  const SizedBox(height: 20),
                  const Text('📅 Pick Date & Time', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 8),
                  buildBullet('Date: 24-05-25'),
                  buildBullet('Time: 6:30 AM To 10:00 AM'),
                  buildBullet('Items Offered: Fruits'),
                  buildBullet('Live Streaming: Yes'),
                  buildBullet('Platform: Zoom'),

                  const SizedBox(height: 20),
                  const Text('📞 Contact Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 8),
                  buildBullet('Booking Name: Ramesh Kumar'),
                  buildBullet('Mobile Number: +91 XXXXXXXX'),
                  buildBullet('Email: Ramesh@Gmail.Com'),

                  const SizedBox(height: 20),
                  const Text('💰 Payment Summary', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 8),
                  buildBullet('Pooja Charges: ₹1500'),
                  buildBullet('Offerings Add-On: ₹300'),
                  buildBullet('Streaming Option: Free'),
                  buildBullet('Total Cost: ₹1800'),

                  const SizedBox(height: 20),
                  const Text('📩 Next Steps:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 8),
                  buildBullet('A Confirmation Email Will Be Sent Shortly.'),
                  buildBullet('You Will Receive A Zoom Link 24 Hours Before The Scheduled Pooja.'),
                  buildBullet('For Any Queries, Please Contact Us At Booking@Speatiham.Com Or Call +91 1234 5678.'),

                  const SizedBox(height: 20),
                  const Text(
                    '🙏 Thank You For Choosing Sree Lalitha Peetham For Your Divine Journey',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
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
