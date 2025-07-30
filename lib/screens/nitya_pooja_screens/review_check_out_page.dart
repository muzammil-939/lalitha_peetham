import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

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
            buildConfirmSection(context),
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
  


Widget buildConfirmSection(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;
  final isTablet = screenWidth >= 600 && screenWidth < 1100;
  final isDesktop = screenWidth >= 1100;

  double horizontalPadding = isDesktop ? 150 : isTablet ? 60 : 20;
  double headingFontSize = isDesktop ? 32 : isTablet ? 26 : 20;
  double sectionFontSize = isDesktop ? 18 : isTablet ? 16 : 14;

  return Stack(
    children: [
      // Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // Planet Image (Top-right)
      Positioned(
        top: isMobile ? 20 : 40,
        right: isMobile ? 10 : 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 40 : 60,
          width: isMobile ? 40 : 60,
        ),
      ),

      // Main Content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Review checkout",
              style: TextStyle(
                fontSize: headingFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

            // Yellow Container
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFE9BD3F),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Stack(
                children: [
                  // Watermark
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

                  // Form Content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User Details', style: TextStyle(fontSize: sectionFontSize, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      ..._userDetailsList.map((text) => buildBullet(text, sectionFontSize)).toList(),

                      const SizedBox(height: 20),
                      Text('Spouse Details', style: TextStyle(fontSize: sectionFontSize, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      ..._spouseDetailsList.map((text) => buildBullet(text, sectionFontSize)).toList(),

                      const SizedBox(height: 20),
                      Text('Children Details', style: TextStyle(fontSize: sectionFontSize, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      ..._childrenDetailsList.map((text) => buildBullet(text, sectionFontSize)).toList(),

                      const SizedBox(height: 80),

                      // Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ResponsiveButton(
                            onPressed: () {},
                            text: "Back",
                            textColor: Colors.black,
                            backgroundColor: const Color(0xFFCDCDCD),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: isMobile ? 120 : 200,
                            child: ResponsiveButton(
                              onPressed: () {
                                context.go('/nityapooja_payment_page');
                              },
                              text: "Continue",
                              textColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
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

// Sample detail data
final List<String> _userDetailsList = [
  'Full Name: Ramesh Sharma',
  'Contact Number: +91 9876543210',
  'Email Address: ramesh.sharma@example.com',
  'Gotra: Bharadwaj',
  'Preferred Start Date: 2025-07-20',
  'Purpose of Pooja: Health and Prosperity',
  'Location: Hyderabad, Telangana',
  'Language: Telugu',
  'Time: 09:30 AM',
  'Star: Rohini',
  'Place of Birth: Visakhapatnam',
  'Date of Birth: 1990-08-15',
];

final List<String> _spouseDetailsList = [
  'Name: Anjali Sharma',
  'Date of Birth: 1992-03-10',
  'Time: 10:45 AM',
  'Star: Revati',
  'Marriage Date: 2015-12-05',
];

final List<String> _childrenDetailsList = [
  'Name: Aarav Sharma',
  'Date of Birth: 2018-06-25',
  'Time: 06:30 AM',
  'Star: Ashwini',
  'Place of Birth: Hyderabad',
  'Upload Image: (Any sample image can be uploaded)',
];

Widget buildBullet(String text, double fontSize) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("• ", style: TextStyle(fontSize: 16)),
        Expanded(child: Text(text, style: TextStyle(fontSize: fontSize))),
      ],
    ),
  );
}
}