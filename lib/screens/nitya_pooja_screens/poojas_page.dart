import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/niyapooja_contact_widget.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class PoojasPage extends StatefulWidget {
  const PoojasPage({super.key});

  @override
  State<PoojasPage> createState() => _PoojasPageState();
}

class _PoojasPageState extends State<PoojasPage> {
  final List<Map<String, String>> poojas = [
    {'image': 'assets/images/e_pooja1.jpg', 'title': 'Rudrabhishek Puja'},
    {'image': 'assets/images/e_pooja2.jpg', 'title': 'Satyanarayan Puja'},
    {'image': 'assets/images/e_pooja3.jpg', 'title': 'Rahu Puja'},
    {'image': 'assets/images/e_pooja4.jpg', 'title': 'Ganesh Pooja'},
    {'image': 'assets/images/e_pooja5.jpg', 'title': 'Durga Pooja'},
    {'image': 'assets/images/e_pooja6.jpg', 'title': 'Durga Pooja'},
  ];

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeroSection(),
            buildTitleSection(),
            const SizedBox(height: 40),
            buildPoojaCardsGrid(poojas),
            const SizedBox(height: 60),
            NiyapoojaContactWidget(),
            const SizedBox(height: 60),
            buildPoojaCardsGrid(poojas),
            const SizedBox(height: 80),
            
          ],
        ),
      ),
    );
  }

    Widget  buildHeroSection() {
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
  Widget buildTitleSection() {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 350,
                  height: 45,
                  child: Row(
                    children: const [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search pooja's",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Explore a Curated Collection of Poojas for Every Special\nOccasion and Spiritual Need",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildPoojaCardsGrid(List<Map<String, String>> poojaList) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Wrap(
        spacing: 30,
        runSpacing: 40,
        alignment: WrapAlignment.center,
        children: poojaList.map((pooja) {
          return buildPoojaCard(
            imagePath: pooja['image']!,
            title: pooja['title']!,
          );
        }).toList(),
      ),
    );
  }

  Widget buildPoojaCard({required String imagePath, required String title}) {
    return Container(
      width: 250,
      height: 270,
      decoration: BoxDecoration(
        color: const Color(0xFFDFBC31),
        borderRadius: BorderRadius.circular(0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () => context.go('/about_ganesh_poojas_page'),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Book Now",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 
}
