import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CatererPackages extends StatefulWidget {
  const CatererPackages({super.key});

  @override
  State<CatererPackages> createState() => _CatererPackagesState();
}

class _CatererPackagesState extends State<CatererPackages> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildCatererPackages(context),
         

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
                "Complete Ritual Packages with or\nwithout Samagri",
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
              'assets/images/catering1.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

Widget buildCatererPackages(BuildContext context) {
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
                "Choose Your Spiritual Package",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),

              // Yellow Background Box
              Container(
                width: 950,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAC63E),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double cardWidth = constraints.maxWidth > 700 ? 400 : constraints.maxWidth / 1.1;
                    return Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      alignment: WrapAlignment.center,
                      children: [
                        buildPackageCard(
                          title: "Standard Veg Package",
                          price: "100,000",
                          subtitle: "1.Ideal for: Housewarming, Birthday Parties, Small Events\nPrice: ₹300 – 900 per plate",
                          features: [
                            "Welcome Drink",
                            "3 Starters (Veg)",
                            "Main Course + 1 Dry Curry + 1 Gravy",
                            "Dal / Sambar",
                            "Rice / Pulao",
                            "Chapati/Poori",
                            "Pickle, Raita, Papad",
                            "Sweet",
                            "Mineral Water"
                          ],
                          width: cardWidth,
                        ),
                        buildPackageCard(
                          title: "Premium Veg Package",
                          price: "500,000",
                          subtitle: "1.Ideal for: Engagements, Receptions\nPrice: ₹900 – 1200 per plate",
                          features: [
                            "Welcome Drink",
                            "5 Starters",
                            "Main Course (Paneer + Special Rice + Sambar)",
                            "Roti / Poori",
                            "Sweets (Indian, Gulab Jamun, etc.)",
                            "Ice Cream",
                            "Salad, Papad, Raita",
                            "Live Counter (Optional Add-on)"
                          ],
                          width: cardWidth,
                        ),
                        buildPackageCard(
                          title: "Standard Non-Veg Package",
                          price: "100,000",
                          subtitle: "1.Ideal For: Family Gatherings, Celebrations\nPrice: ₹300 – 900 per plate",
                          features: [
                            "Welcome Drink",
                            "Veg Starter + Non-Veg Starter (e.g., Chicken 65)",
                            "Chicken Curry",
                            "Egg Curry",
                            "Biryani (Chicken/Mutton)",
                            "Dal / Sambar",
                            "Roti, Rice",
                            "Sweet",
                            "Mineral Water"
                          ],
                          width: cardWidth,
                        ),
                        buildPackageCard(
                          title: "Wedding Grand Feast (Veg/Non-Veg Combo)",
                          price: "500,000",
                          subtitle: "1.Ideal For: Engagements, Receptions\nPrice: ₹900 – 1200 per plate",
                          features: [
                            "Welcome Drinks (Mocktails)",
                            "5 Starters (3 Non-Veg + 2 Veg)",
                            "Curd Rice, Biryani, Roti, Naan, Kulcha",
                            "2 Hot Sweets / 1 Ice Cream",
                            "Live Counter & Dessert Counter",
                            "Full Buffet Setup with Decor"
                          ],
                          width: cardWidth,
                        ),
                      ],
                    );
                  },
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
  required String price,
  required String subtitle,
  required List<String> features,
  required double width,
}) {
  return SizedBox(
    width: width,
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
           Divider(),
          const SizedBox(height: 8),
          Text(
            price,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xFFFF8C00),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(subtitle, style: const TextStyle(fontSize: 13)),
          Divider(),
          const SizedBox(height: 15),
          ...features.asMap().entries.map((entry) {
            final index = entry.key + 1;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                "$index. ${entry.value}",
                style: const TextStyle(fontSize: 13),
              ),
            );
          }).toList(),
          const SizedBox(height: 18),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF5C761),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                context.go('/caterer_review_checkout');
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

