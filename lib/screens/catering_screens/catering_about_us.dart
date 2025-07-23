import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_layout.dart';

class CateringAboutUs extends StatefulWidget {
  const CateringAboutUs({super.key});

  @override
  State<CateringAboutUs> createState() => _CateringAboutUsState();
}

class _CateringAboutUsState extends State<CateringAboutUs> {
  @override
  Widget build(BuildContext context) {
    return CateringLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildCatererSearchScreen(context),
            SizedBox(height: 80,)

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
                "Find the Perfect Caterer for Your\nOccasion",
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


  Widget buildCatererSearchScreen(BuildContext context) {
    return Stack(
        children: [
          // Background Decorations
         Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 450,
          width: 1500,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
          Positioned(
            top: 40,
            right: 40,
            child: Image.asset(
              'assets/images/vastupooja11.png', // orange moon image
              width: 60,
              height: 60,
            ),
          ),
    Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🌟 About Us Section
            const Text(
              "About Us",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "We help you find and book the perfect caterers for any event — based on cuisine, budget, and real customer reviews. From intimate gatherings to grand celebrations, explore top-rated caterers, compare prices, view menus, and book with confidence — all in one place.",
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 60),
      
            // 🔍 Search Section Title
            const Text(
              "Find the right caterer for your event",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
      
            // 🔶 Yellow Search Form
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: _buildDropdownField("Event type")),
                      const SizedBox(width: 16),
                      Expanded(child: _buildDropdownField("Cuisine")),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: _buildDropdownField("Location")),
                      const SizedBox(width: 16),
                      Expanded(child: _buildDropdownField("Date")),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: _buildDropdownField("Catering Type")),
                      const SizedBox(width: 16),
                      Expanded(child: _buildDropdownField("Budget")),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        context.go('/caterer_product_list');
                      },
                      child: const Text("Search now"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
        ]
    );
    
  }

  // 🌟 Dropdown Widget Builder
  Widget _buildDropdownField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        Container(
          height: 45,

          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text('Select'),
              items: const [],
              onChanged: (_) {},
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down),
            ),
          ),
        ),
      ],
    );
  }
}

