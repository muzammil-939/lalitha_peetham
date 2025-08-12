import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/upcoming_poojas_screens/upcoming_pooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class UpcomingPoojaWelcomescreen extends StatefulWidget {
  const UpcomingPoojaWelcomescreen({super.key});

  @override
  State<UpcomingPoojaWelcomescreen> createState() => _UpcomingPoojaWelcomescreenState();
}

class _UpcomingPoojaWelcomescreenState extends State<UpcomingPoojaWelcomescreen> {
  @override
  Widget build(BuildContext context) {
    return UpcomingPoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildTitleSection(context),
            SizedBox(height: 50,),
           
          ],
        ),
      ),
    );
  }

   Widget buildTitleSection(BuildContext context) {
  double width = ResponsiveHelper.screenWidth(context);
  bool isMobile = ResponsiveHelper.isMobile(context);
bool isTablet = ResponsiveHelper.isMobile(context);

  return Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: isMobile ? 60 : 120,
        right: isMobile ? 16 : 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 60 : 100,
          width: isMobile ? 60 : 100,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 150, vertical: 25),
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
                width: isMobile ? width * 0.9 : 350,
                height: 45,
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search your nearest temples",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Select which temple you want do here easy steps",
              style: TextStyle(
                fontSize: isMobile ? 24 : isTablet ? 30 :45,
                fontWeight: FontWeight.w900,
              ),
            ),
             TempleFilters (),
            SizedBox(height: 50,),
            TempleRows(
              temples: temples,
            ),
            const SizedBox(height: 30),

           
          ],
          
        ),
        
      ),
      
    ],
    
  );
}

}

class TempleFilters extends StatelessWidget {
  const TempleFilters({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveHelper.isMobile(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildDropdown("Location", isMobile),
          buildDropdown("Festival", isMobile),
          buildDropdown("Houmas", isMobile),
          buildDropdown("Kalyanam", isMobile),
          buildDropdown("Abhisekham", isMobile),
          buildDropdown("Seva's", isMobile),
        ],
      ),
    );
  }

  Widget buildDropdown(String label, bool isMobile) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 12),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: label,
          icon: const Icon(Icons.arrow_drop_down),
          items: [DropdownMenuItem(value: label, child: Text(label))],
          onChanged: (value) {},
        ),
      ),
    );
  }
}


class TempleRows extends StatelessWidget {
  final List<Map<String, String>> temples;

  const TempleRows({super.key, required this.temples});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);
    double screenWidth = ResponsiveHelper.screenWidth(context);

    double cardWidth = isMobile
        ? screenWidth / 3
        : isTablet
            ? screenWidth / 6
            : 200;

    // Ensure at least 10 items for 2 rows × 5 columns
    final displayTemples = temples.length >= 10
        ? temples
        : List.generate(10, (i) => temples[i % temples.length]);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              // First row
              Row(
                children: List.generate(5, (index) {
                  final temple = displayTemples[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: TempleCard(
                      image: temple["image"]!,
                      title: temple["title"]!,
                      description: temple["description"]!,
                      width: cardWidth,
                      path: temple['path'],
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              // Second row
              Row(
                children: List.generate(5, (index) {
                  final temple = displayTemples[index + 5];
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: TempleCard(
                      image: temple["image"]!,
                      title: temple["title"]!,
                      description: temple["description"]!,
                      width: cardWidth,
                      path: temple['path'],
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TempleCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double width;
  final path;

  const TempleCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.width,
    required this.path
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);

    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              height: isMobile ? 100 : isTablet ? 110 : 130,
              width: width,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 12 : isTablet ? 13 : 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              color: Colors.black54,
              fontSize: isMobile ? 10 : isTablet ? 11 : 12,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFAC738),
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? 6 : 8,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                context.go(path);              },
              child: Text(
                "View",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: isMobile ? 11 : 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Temple Data
final List<Map<String, String>> temples = [
  {
    "image": "assets/images/upcoming_poojas1.png",
    "title": "Siddhi Vinayaka Temple",
    "description": "A revered temple dedicated to Lord Ganesha in Mumbai.",
    'path':'/view_details_of_siddivinayaka_temple'
  },
  {
    "image": "assets/images/upcoming_poojas2.png",
    "title": "Kanipakam Temple",
    "description": "Famous for its self-manifested idol of Lord Vinayaka.",
  },
  {
    "image": "assets/images/upcoming_poojas3.png",
    "title": "Dholka Temple",
    "description": "Known for its ancient architecture and spiritual significance.",
  },
  {
    "image": "assets/images/upcoming_poojas4.png",
    "title": "Dodda Temple",
    "description": "A prominent temple in Bangalore, dedicated to Lord Ganesha.",
  },
  {
    "image": "assets/images/upcoming_poojas5.png",
    "title": "Moti Dungri Temple",
    "description": "A beautiful temple in Jaipur, known for its scenic location.",
  },
  {
    "image": "assets/images/upcoming_poojas6.png",
    "title": "Rockfort Uchchi Temple",
    "description": "A historic temple in Trichy, situated atop a rock fort.",
  },
  {
    "image": "assets/images/upcoming_poojas7.png",
    "title": "Pillayarpatti Temple",
    "description": "A temple in Tamil Nadu, famous for its rock-cut architecture.",
  },
  {
    "image": "assets/images/upcoming_poojas8.png",
    "title": "Maha Devasthanam Temple",
    "description": "A significant temple in Andhra Pradesh, dedicated to Lord Shiva.",
  },
  {
    "image": "assets/images/upcoming_poojas9.png",
    "title": "Varasiddhi Temple",
    "description": "A temple in Bangalore, known for its serene atmosphere.",
  },
  {
    "image": "assets/images/upcoming_poojas10.png",
    "title": "Ashtavinayak Circuit Temples",
    "description": "A group of eight temples dedicated to Lord Ganesha in Maharashtra.",
  },
];