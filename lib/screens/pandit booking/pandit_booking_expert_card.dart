import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingExpertCard extends StatelessWidget {
  PanditBookingExpertCard({super.key});
  final List<Map<String, dynamic>> astrologers = [
    {
      "name": "SHREEHARI",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34.43",
      "exp": "Exp: 9 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "THEIVANAIN",
      "image": "assets/images/vastupooja7.png",
      "price": "\$65.93",
      "exp": "Exp: 5 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "PARAMDHAMAN",
      "image": "assets/images/vastupooja7.png",
      "price": "\$52.75",
      "exp": "Exp: 12 Years",
      "orders": "24541 Orders",
    },
  ];

@override
Widget build(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  // Adjust card width based on screen size
  double screenWidth = MediaQuery.of(context).size.width;
  double cardWidth = isMobile
      ? screenWidth / 1.1
      : isTablet
          ? screenWidth / 2.5
          : screenWidth / 3.5;

  // Adjust padding and title size
  double horizontalPadding = isMobile ? 16 : 50;
  double titleFontSize = isMobile ? 24 : 45;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CHOOSE OUR EXPERTS",
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: astrologers.map((astro) {
            return Container(
              width: cardWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.bookmark_border, size: 18),
                    ),
                  ),
                  CircleAvatar(
                    radius: isMobile ? 40 : 60,
                    backgroundImage: AssetImage(astro["image"]),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) =>
                          Icon(Icons.star, size: 16, color: Colors.amber),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    astro["orders"],
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    astro["name"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isMobile ? 18 : 24,
                    ),
                  ),
                  Text(
                    "${astro["price"]} /min",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Vastu & Energy Balancing\nTelugu",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    astro["exp"],
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.person, size: 14),
                        label: const Text("Follow", style: TextStyle(fontSize: 12)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          context.go('/pandit_booking_choose_experts');
                        },
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.chat, color: Colors.green, size: 20),
                      const SizedBox(width: 8),
                      const Icon(Icons.call, color: Colors.green, size: 20),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    ),
  );
}

}
