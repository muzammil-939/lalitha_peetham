import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_expert_card.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_faq_support_wid.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

import '../palm_reading/palm_reading_expert_card.dart';
import '../photography/photography_faq_support_wid.dart';

class PanditBookingHome extends StatefulWidget {
  const PanditBookingHome({super.key});

  @override
  State<PanditBookingHome> createState() => _PanditBookingHomeState();
}

class _PanditBookingHomeState extends State<PanditBookingHome> {

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

@override
Widget build(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  final poojaCards = [
    _buildPoojaCard(context, "Rudrabhishek Puja", 'null'),
    _buildPoojaCard(context, "Satyanarayan Puja", '/pandit_booking_satyanarayana_pooja'),
    _buildPoojaCard(context, "Rahu Puja", 'null'),
    _buildPoojaCard(context, "Ganesh Pooja", '/pandit_booking_ganesh_pooja'),
    _buildPoojaCard(context, "Durga Pooja", 'null'),
    _buildPoojaCard(context, "Durga Pooja", 'null'),
  ];

  return PanditBookingLayout(
    child: SingleChildScrollView(
      child: Column(
        children: [
          buildherosection(),
          SizedBox(height: isMobile ? 40 : 80),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 32),
            child: Column(
              children: [
                _buildSearchBar(context),
                SizedBox(height: isMobile ? 30 : 50),

                Text(
                  "Explore a Curated Collection of Poojas for Every Special\nOccasion and Spiritual Need",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 20 : (isTablet ? 26 : 32),
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),

                SizedBox(height: isMobile ? 30 : 50),

                // 📱 Mobile: 1 per row
                if (isMobile) ...poojaCards
                    .map((card) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: card,
                        ))
                    .toList(),

                // 💻 Tablet: 2 per row
                if (isTablet)
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: poojaCards
                        .map((card) => SizedBox(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              child: card,
                            ))
                        .toList(),
                  ),

                // 🖥️ Desktop: 3 per row in 2 rows
                if (isDesktop) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: poojaCards.sublist(0, 3).map((card) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: card,
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: poojaCards.sublist(3).map((card) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: card,
                      );
                    }).toList(),
                  ),
                ],
              ],
            ),
          ),

          SizedBox(height: isMobile ? 50 : 100),

          PandithContactSection(),
          SizedBox(height: isMobile ? 50 : 100),

          // 👉 Additional 3 Cards after Contact Section
          if (!isMobile)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPoojaCard(context, "Rudrabhishek Puja", 'null'),
                _spacerW(),
                _buildPoojaCard(context, "Satyanarayan Puja", '/pandit_booking_satyanarayana_pooja'),
                _spacerW(),
                _buildPoojaCard(context, "Rahu Puja", 'null'),
              ],
            )
          else
            Column(
              children: [
                _buildPoojaCard(context, "Rudrabhishek Puja", 'null'),
                _spacerH(),
                _buildPoojaCard(context, "Satyanarayan Puja", '/pandit_booking_satyanarayana_pooja'),
                _spacerH(),
                _buildPoojaCard(context, "Rahu Puja", 'null'),
              ],
            ),

          SizedBox(height: isMobile ? 50 : 100),
          PanditBookingExpertCard(),
          SizedBox(height: isMobile ? 50 : 100),
        ],
      ),
    ),
  );
}


SizedBox _spacerH() => const SizedBox(height: 20);
SizedBox _spacerW() => const SizedBox(width: 20);

Widget _buildPoojaCard(BuildContext context, String title, String path) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final width = (isMobile ? 180 : 250).toDouble();
  final height = (isMobile ? 240 : 290).toDouble();
  final imageHeight = (isMobile ? 130 : 180).toDouble();
  final fontSize = (isMobile ? 12 : 16).toDouble();

  return Container(
    width: width,
    height: height,
    child: Column(
      children: [
        Container(
          width: width - 20,
          height: imageHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            image: const DecorationImage(
              image: AssetImage('assets/images/pandith_booking_home_2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: width - 20,
          height: height - imageHeight,
          decoration: BoxDecoration(
            color: const Color(0xFFE4C74D),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => context.go(path),
                child: Container(
                  width: isMobile ? 100 : 150,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: isMobile ? 12 : 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


Widget _buildCardGrid(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);

  final poojaList = [
    {"title": "Rudrabhishek Puja", "path": 'null'},
    {"title": "Satyanarayan Puja", "path": '/pandit_booking_satyanarayana_pooja'},
    {"title": "Rahu Puja", "path": 'null'},
    {"title": "Ganesh Pooja", "path": '/pandit_booking_ganesh_pooja'},
    {"title": "Durga Pooja", "path": 'null'},
    {"title": "Durga Pooja", "path": 'null'},
  ];

  if (isMobile) {
    return Column(
      children: poojaList.map((item) {
        return _buildPoojaCard(context, item['title']!, item['path']!);
      }).toList(),
    );
  } else {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      alignment: WrapAlignment.center,
      children: poojaList.map((item) {
        return _buildPoojaCard(context, item['title']!, item['path']!);
      }).toList(),
    );
  }
}

Widget _buildSearchBar(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Container(
    height: 50,
    width: isMobile ? double.infinity : 350,
    decoration: BoxDecoration(
      color: Color(0xFFB8B8B8),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Search pooja's",
            style: TextStyle(
              color: Colors.black,
              fontSize: isMobile ? 14 : 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(Icons.search, color: Colors.black),
        ),
      ],
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
        // Positioned(
        //   top: 40,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Icon(Icons.menu, color: Colors.white),
        //       SizedBox(width: 6),
        //       Text(
        //         "Menu",
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 25,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
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
            children:[
              Text(
                "FIND THE PERFECT POOJA SERVICE TAILORED \nTO YOUR SPIRITUAL NEEDS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context, mobile: 20 , tablet: 30, desktop: 45),
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
              'assets/images/pandit_booking_home.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
