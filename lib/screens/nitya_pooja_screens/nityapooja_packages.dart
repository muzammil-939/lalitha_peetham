import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class NityapoojaPackages extends StatefulWidget {
  const NityapoojaPackages({super.key});

  @override
  State<NityapoojaPackages> createState() => _NityapoojaPackagesState();
}

class _NityapoojaPackagesState extends State<NityapoojaPackages> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildNityapoojaPackages(context),
         

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
                "Choose Your Nithya Pooja Package",
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


Widget buildNityapoojaPackages(BuildContext context) {
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


      // Top-right Planet Image
      Positioned(
        top: 100,
        right: 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 120,
          width: 120,
        ),
      ),



      // Main Content
      Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Nithya Pooja Subscription Packages",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),

              // Yellow Card Background Container
              Container(
                width: 900,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFEAC63E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    // Top Basic Plan Card (fixed width)
                    buildPackageCard(
                      title: "Basic Plan – Monthly Pooja",
                      description:
                          "Pooja performed daily at selected temple\nIncludes: Nama-Gotra sankalpam, Archana\nNo live access/only confirmation message\nLanguage: Hindi / Telugu / Tamil",
                      price: "₹499/month",
                      linkText: "Price: ₹499/month",
                    ),
                    const SizedBox(height: 24),

                    // Wrap with 2x2 Responsive Cards
                    LayoutBuilder(
                      builder: (context, constraints) {
                        double cardWidth = constraints.maxWidth > 700 ? 350 : constraints.maxWidth / 1.1;
                        return Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.center,
                          children: [
                            buildFeatureCardNumbered(
                              title: "Standard Plan – Monthly + Prasadam",
                              price: "₹999/month",
                              features: [
                                "Daily pooja with name–gotra inclusion",
                                "Prasadam couriered every 15 days",
                                "Whatsapp update + pooja confirmation",
                              ],
                              width: cardWidth,
                            ),
                            buildFeatureCardNumbered(
                              title: "Premium Plan – Video + Delivery",
                              price: "₹1,499/month",
                              features: [
                                "Personalized daily pooja",
                                "Pooja video/photo sent weekly",
                                "Monthly Prasadam courier included",
                                "Whatsapp support + dashboard tracking",
                              ],
                              width: cardWidth,
                            ),
                            buildFeatureCardNumbered(
                              title: "Family Plan – 4 Members",
                              price: "₹1,999/month",
                              features: [
                                "Nithya pooja for up to 4 family members",
                                "Sankalpam + Archana",
                                "Prasadam sent monthly",
                              ],
                              width: cardWidth,
                            ),
                            buildFeatureCardNumbered(
                              title: "Annual Shashwatha Pooja Plan",
                              price: "₹7,499/year",
                              features: [
                                "365-day pooja registration in chosen temple",
                                "1 full year sankalpam with your name",
                                "One-time special puja (Birthday or Sankranti)",
                                "Annual report + pooja details",
                                "Best Fest: Ganesh Chaturthi, Diwali, Navratri",
                              ],
                              width: cardWidth,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}




  Widget buildPackageCard({
    required String title,
    required String description,
    required String price,
    required String linkText,
  }) {
    return Container(
      width: 720,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Divider(),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          Text(
            price,
            style: const TextStyle(
              color: Color(0xFFFFB208),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF5C761),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            ),
            onPressed: () {
              context.go('/nityapooja_subscription_form');
            },
            child: const Text("Book now"),
          ),
        ],
      ),
    );
  }

 Widget buildFeatureCardNumbered({
  required String title,
  required String price,
  required List<String> features,
  required double width,
}) {
  return SizedBox(
    width: width,
    height: 290,//fixed height
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Divider(),
          const SizedBox(height: 12),
          Text(
            "Price: $price",
            style: const TextStyle(
              color: Color(0xFFFFB208),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          ...features.asMap().entries.map((entry) {
            final index = entry.key + 1;
            final feature = entry.value;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                "$index. $feature",
                style: const TextStyle(fontSize: 13),
              ),
            );
          }),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Color(0xFFF5C761),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                context.go('/nityapooja_booking_page');
              },
              child: const Text("Book now"),
            ),
          ),
        ],
      ),
    ),
  );
}


}

