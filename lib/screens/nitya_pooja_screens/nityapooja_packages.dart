import 'package:flutter/material.dart';
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


  Widget buildNityapoojaPackages(BuildContext context) {
    return 
        Column(
          children: [
            const Text(
              "Nithya Pooja Subscription Packages",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF2C94C),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  buildPackageCard(
                    title: "Basic Plan – Monthly Pooja",
                    description:
                        "Pooja performed daily at selected temple\nIncludes: Nama-Gotra sankalpam, Archana\nNo live access/only confirmation message\nLanguage: Hindi / Telugu / Tamil",
                    price: "₹499/month",
                    linkText: "Price: ₹499/month",
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      buildFeatureCard(
                        title: "Standard Plan – Monthly + Prasadam",
                        price: "₹999/month",
                        features: [
                          "Daily pooja with name–gotra inclusion",
                          "Prasadam couriered every 15 days",
                          "Whatsapp update + pooja confirmation",
                        ],
                      ),
                      buildFeatureCard(
                        title: "Premium Plan – Video + Delivery",
                        price: "₹1,499/month",
                        features: [
                          "Personalized daily pooja",
                          "Pooja video/photo sent weekly",
                          "Monthly Prasadam courier included",
                          "Whatsapp support + dashboard tracking",
                        ],
                      ),
                      buildFeatureCard(
                        title: "Family Plan – 4 Members",
                        price: "₹1,999/month",
                        features: [
                          "Nithya pooja for up to 4 family members",
                          "Sankalpam + Archana",
                          "Prasadam sent monthly",
                        ],
                      ),
                      buildFeatureCard(
                        title: "Annual Shashwatha Pooja Plan",
                        price: "₹7,499/year",
                        features: [
                          "365-day pooja registration in chosen temple",
                          "1 full year sankalpam with your name",
                          "One-time special puja (Birthday or Sankranti)",
                          "Annual report + pooja details",
                          "Best Fest: Ganesh Chaturthi, Diwali, Navratri",
                        ],
                      ),
                    ],
                  )
                ],
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
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
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
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            ),
            onPressed: () {},
            child: const Text("Book now"),
          ),
        ],
      ),
    );
  }

  Widget buildFeatureCard({
    required String title,
    required String price,
    required List<String> features,
  }) {
    return SizedBox(
      width: 300,
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
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 8),
            Text(
              "Price: $price",
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...features
                .map((f) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("• "),
                          Expanded(
                            child: Text(
                              f,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: const Text("Book now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

