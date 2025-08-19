import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ZodiacSection extends StatefulWidget {
  const ZodiacSection({super.key});

  @override
  State<ZodiacSection> createState() => _ZodiacSectionState();
}

class _ZodiacSectionState extends State<ZodiacSection> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 200,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 200,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : (isTablet ? 40 : 100),
        vertical: isMobile ? 20 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Small heading
          Text(
            "DAILY HOROSCOPE",
            style: TextStyle(
              fontSize: isMobile ? 10 : 12,
              letterSpacing: 2,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: isMobile ? 6 : 8),

          // Main title
          Text(
            "CHOOSE YOUR ZODIAC SIGN",
            style: TextStyle(
              fontSize: isMobile ? 20 : (isTablet ? 24 : 28),
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
              color: Colors.grey[900],
            ),
          ),
          SizedBox(height: isMobile ? 10 : 16),

          // Description
          Text(
            "Start your day with guidance from the stars.\nGet personalized predictions for love, career, health, and more—based on your zodiac sign.",
            style: TextStyle(
              fontSize: isMobile ? 12 : 14,
              height: 1.5,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: isMobile ? 16 : 24),

          // Read Today's Horoscope Row
          Row(
            children: [
              Expanded(
                child: Text(
                  "READ TODAY'S HOROSCOPE→",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: isMobile ? 10 : 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                  ),
                ),
              ),
             
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 18),
                  onPressed: _scrollLeft,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, size: 18),
                  onPressed: _scrollRight,
                ),
              
            ],
          ),
          SizedBox(height: isMobile ? 16 : 20),

          // Zodiac cards horizontal list
          SizedBox(
            height: isMobile ? 180 : 230,
            child: ListView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: [
                zodiacCard(context, "ARIES", "assets/images/zodiac_section1.png"),
                zodiacCard(context, "TAURUS", "assets/images/zodiac_section2.png"),
                zodiacCard(context, "GEMINI", "assets/images/zodiac_section3.png"),
                zodiacCard(context, "CANCER", "assets/images/zodiac_section4 (2).png"),
                zodiacCard(context, "LEO", "assets/images/zodiac_section5.png"),
                zodiacCard(context, "VIGRO", "assets/images/zodiac_section6.png"),
                zodiacCard(context, "LIBRA", "assets/images/zodiac_section7.png"),
                zodiacCard(context, "SCORPIO", "assets/images/zodiac_section8.png"),
                zodiacCard(context, "SAGITTARIUS", "assets/images/zodiac_section9.png"),
                zodiacCard(context, "CAPRICORN", "assets/images/zodiac_section10.png"),
                zodiacCard(context, "AQUIRUS", "assets/images/zodiac_section11.png"),
                zodiacCard(context, "PISCES", "assets/images/zodiac_section12.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget zodiacCard(BuildContext context, String name, String imagePath) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return Container(
      margin: EdgeInsets.only(right: isMobile ? 12 : 16),
      width: isMobile ? 120 : (isTablet ? 150 : 180),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF0C142A),
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(isMobile ? 12 : 20),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            color: const Color(0xFFB8B117),
            padding: EdgeInsets.symmetric(
              vertical: isMobile ? 8 : 12,
              horizontal: isMobile ? 6 : 8,
            ),
            child: Column(
              children: [
                // Star Dropdown
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 6 : 8,
                    vertical: isMobile ? 2 : 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Star",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isMobile ? 10 : 12,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: isMobile ? 14 : 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: isMobile ? 4 : 6),

                // Actions
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Read More", style: TextStyle(fontSize: isMobile ? 8 : 10)),
                    Icon(Icons.arrow_forward, size: isMobile ? 8 : 10, color: Colors.black),

                    Icon(Icons.share, size: isMobile ? 8 : 10, color: Colors.black),
                    Text("Share", style: TextStyle(fontSize: isMobile ? 8 : 10)),

                    Icon(Icons.favorite_border, size: isMobile ? 8 : 10, color: Colors.black),
                    Text("Like", style: TextStyle(fontSize: isMobile ? 8 : 10)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
