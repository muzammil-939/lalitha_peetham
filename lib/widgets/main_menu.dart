import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';


class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int? hoveredIndex;

  final List<Map<String, dynamic>> menuItems = [
    {"title": "Nithya Pooja Subscription", "route": "/nityapooja_packages"},
    {"title": "Astrology", "route": "/astrology_welcomescreen"},
    {"title": "Pandit Booking", "route": "/pandit_booking_home"},
    {"title": "E-Pooja", "route": "/upcoming_pooja"},
    {"title": "Upcoming Pooja", "route": "/upcoming_pooja_welcome_screen"},
    {"title": "Cataring", "route": "/catering_welcome_screen"},
    {"title": "E Store", "route": "/e_store_shop_allproducts"},
    {"title": "Matrimony", "route": "/matri_dashboard"},
    {"title": "Real Estate/\nProperty Buy & Sell", "route": "/real_estate_welcome_page"},
    {"title": "Yoga", "route": "/welcome_screen"},
    {"title": "Ayurvedham", "route": "/ayurvedha"},
    {"title": "Vastu Property\nPlaning", "route": "/online_vastu_pooja"},
    {"title": "Photography", "route": "/photography_home"},
    {"title": "Sannai Melam", "route": "/sanni_melam_welcome_screen"},
    {"title": "Online Muhurthas", "route": "/online_muhurthas_home"},
    {"title": "Event Management", "route": "/em_welcome_screen"},
    {"title": "Pooja Vidhanam\nCourse", "route": "/pv_home_screen"},
    {"title": "Flower Decoration", "route": "/flower_deco_home"},
  ];

  @override
  Widget build(BuildContext context) {
    // Dynamically adjust font & padding based on device type
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);
    bool isDesktop = ResponsiveHelper.isDesktop(context);

    double headingFontSize = isMobile ? 16 : (isTablet ? 18 : 20);
    double subTextFontSize = isMobile ? 12 : 14;
    double buttonFontSize = isMobile ? 12 : 14;
    double containerWidth = isMobile ? 140 : 180;
    double containerHeight = isMobile ? 50 : 60;
    double spacing = isMobile ? 10 : 16;
    double runSpacing = isMobile ? 10 : 16;
    EdgeInsets screenPadding = EdgeInsets.symmetric(
      horizontal: isMobile ? 16 : (isTablet ? 40 : 60),
      vertical: isMobile ? 12 : 20,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top Section
        Padding(
          padding: screenPadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment:
                    isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HI SHARMA, YOU ARE REGISTERED AS A SEEKER",
                          style: TextStyle(
                            fontSize: headingFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Welcome back! Explore our services and find what you need today",
                          style: TextStyle(
                            fontSize: subTextFontSize,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!isMobile)
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE4C74D),
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 12 : 20,
                          vertical: isMobile ? 10 : 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () => context.go("/profile"),
                      child: Text(
                        "View Profile  →",
                        style: TextStyle(
                          fontSize: buttonFontSize,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                ],
              ),
              if (isMobile)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE4C74D),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () => context.go("/profile"),
                    child: Text(
                      "View Profile  →",
                      style: TextStyle(
                        fontSize: buttonFontSize,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),

        // Menu Items
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: isMobile ? 20 : 30,
            ),
            child: Wrap(
              spacing: spacing,
              runSpacing: runSpacing,
              children: List.generate(menuItems.length, (index) {
                bool isHovered = index == hoveredIndex;
                return MouseRegion(
                  onEnter: (_) => setState(() => hoveredIndex = index),
                  onExit: (_) => setState(() => hoveredIndex = null),
                  child: InkWell(
                    onTap: () {
                      if (menuItems[index]["route"] != null) {
                        context.go(menuItems[index]["route"]);
                      }
                    },
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      width: containerWidth,
                      height: containerHeight,
                      decoration: BoxDecoration(
                        color: isHovered ? const Color(0xFFEFE5B9) : Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color(0xFFEFE5B9),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          menuItems[index]["title"],
                          style: TextStyle(
                            fontSize: isMobile ? 12 : 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
