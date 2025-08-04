import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/niyapooja_contact_widget.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/modules_colors.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PoojasPage extends StatefulWidget {
  const PoojasPage({super.key});

  @override
  State<PoojasPage> createState() => _PoojasPageState();
}

class _PoojasPageState extends State<PoojasPage> {

double getResponsiveFontSize(BuildContext context,
    {required double mobile, required double tablet, required double desktop}) {
  final width = MediaQuery.of(context).size.width;
  if (width >= 1200) return desktop;
  if (width >= 800) return tablet;
  return mobile;
}

 void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }

  final List<Map<String, String>> poojaList = [
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
          buildherosection(), // If full-width hero is needed
          buildTitleSection(context),
          const SizedBox(height: 40),
          buildPoojaCardsGrid(context,poojaList),
          const SizedBox(height: 150),
           NiyapoojaContactWidget(),
          const SizedBox(height: 150),
           buildPoojaCardsGrid(context,poojaList,),
          const SizedBox(height: 80),
        ],
      ),
    ),
  );
}


    Widget buildherosection() {
      final size = MediaQuery.of(context).size;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;
    

    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

        double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
       // Menu button positioned at top
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          top: 120,
          child: Column(
            children: [
              
              Text(
                "Find the Perfect Pooja Service Tailored\nto Your Spiritual Needs",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                      fontSize: getResponsiveFontSize(
                      context,
                      mobile: 20,
                      tablet: 30,
                      desktop: 45,
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

Widget buildTitleSection(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;
  final isTablet = screenWidth >= 600 && screenWidth < 1024;
  final horizontalPadding = isMobile ? 16.0 : isTablet ? 40.0 : 150.0;

  return Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 40),
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
                width: isMobile ? double.infinity : 350,
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
            Text(
              "Explore a Curated Collection of Poojas for Every Special\nOccasion and Spiritual Need",
              style: TextStyle(
                fontSize: isMobile ? 20 : isTablet ? 26 : 32,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildPoojaCardsGrid(BuildContext context, List<Map<String, String>> poojaList) {
  final screenWidth = MediaQuery.of(context).size.width;
  final horizontalPadding = screenWidth < 600 ? 16.0 : screenWidth < 1024 ? 40.0 : 150.0;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: Wrap(
      spacing: 20,
      runSpacing: 30,
      alignment: WrapAlignment.center,
      children: poojaList.map((pooja) {
        return buildPoojaCard(
          context: context,
          imagePath: pooja['image']!,
          title: pooja['title']!,
        );
      }).toList(),
    ),
  );
}
Widget buildPoojaCard({
  required BuildContext context,
  required String imagePath,
  required String title,
}) {
  final screenWidth = MediaQuery.of(context).size.width;
  final cardWidth = screenWidth < 400 ? screenWidth * 0.9 : 250.0;

  return Container(
    width: cardWidth,
    height: 270,
    decoration: BoxDecoration(
      // color: NityapoojaColors.cards,
      color: NityapoojaColors.cards,
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
