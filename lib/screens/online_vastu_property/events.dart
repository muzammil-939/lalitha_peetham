import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeroSection(),
            const SizedBox(height: 30),
            buildTitleSection(),
            const SizedBox(height: 20),
            buildDescriptionSection(),
            const SizedBox(height: 40),
            buildCelebratesActressSection(),
            const SizedBox(height: 40),
            buildPressMediaSection(),
            const SizedBox(height: 80),
            AstrologerContactSection(),
            const SizedBox(height: 80),
            buildAstrologyeventSection(),
            const SizedBox(height: 80),
            buildEngineersSection(),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  // ------------------ Hero Section ------------------
  Widget buildHeroSection() {
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
              Text("Menu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "Book a Session with Our Vastu Pooja\nSpecialist",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            child: Image.asset(
              'assets/images/vastupooja18.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  // ------------------ Title ------------------
  Widget buildTitleSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      child: Text(
        'EMPOWERING SPIRITUAL JOURNEYS THROUGH COLLABORATIVE\nASTROLOGY INSIGHTS',
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
      ),
    );
  }

  // ------------------ Description ------------------
  Widget buildDescriptionSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      child: Text(
        'Astrology Enthusiasts Can Experience Deeper Insights And Unique Opportunities Through Insightful Collaborations That Foster Connections Across Various Platforms. By Partnering With Renowned Brands, Influencers, And Experts, We’re Expanding Our Reach And Building A Vibrant Community. These Collaborations Offer Valuable Astrological Insights, Exclusive Content, And Special Offers, Empowering Individuals On Their Spiritual Journey. With A Focus On Authenticity And Accessibility, We Aim To Amplify The Reach Of Astrology, Creating Meaningful Connections And Enriching The Lives Of Those Seeking Celestial Guidance.',
        style: TextStyle(fontSize: 16, height: 1.6),
        textAlign: TextAlign.justify,
      ),
    );
  }

  // ------------------ Celebrates Actress Section ------------------
  Widget buildCelebratesActressSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'CELEBRATES ACTRESS',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Wrap(
              spacing: 24,
              runSpacing: 32,
              alignment: WrapAlignment.center,
              children: [
                buildActressCard(
                  imagePath: 'assets/images/vastupooja19.png',
                  title: 'Priyanka',
                  roleLabel: 'Indian Actress',
                  backgroundColor: const Color(0xFFFFC107),
                ),
                buildActressCard(
                  imagePath: 'assets/images/vastupooja19.png',
                  title: 'Mounika',
                  roleLabel: 'Indian Actress',
                  backgroundColor: const Color(0xFFFFC107),
                ),
                buildActressCard(
                  imagePath: 'assets/images/vastupooja19.png',
                  title: 'Kalpana',
                  roleLabel: 'Indian Actress',
                  backgroundColor: const Color(0xFFFFC107),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ------------------ Press Media Section ------------------
  Widget buildPressMediaSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'PRESS MEDIA',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Wrap(
        spacing: 24,
        runSpacing: 24,
        alignment: WrapAlignment.center,
        children: [
      buildPressMediaCard(
        imagePath: 'assets/images/vastupooja20.png',
        description: 'Daily horoscopes\nand cosmic updates\nto guide your day.',
        roleLabel: 'News Channel',
        backgroundColor: const Color(0xFFFFC107),
      ),
      buildPressMediaCard(
        imagePath: 'assets/images/vastupooja20.png',
        description: 'Planetary updates\nand zodiac guidance —\nstraight from the stars.',
        roleLabel: 'News Channel',
        backgroundColor: const Color(0xFFFFC107),
      ),
      buildPressMediaCard(
        imagePath: 'assets/images/vastupooja21.png',
        description: 'Star-powered updates\nfor love, life, and purpose.',
        roleLabel: 'News Channel',
        backgroundColor: const Color(0xFFFFC107),
      ),
        ],
      )
      
          ),
        ],
      ),
    );
  }

  // ------------------ Astrology Events ------------------

    Widget buildAstrologyeventSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'ASTROLOGY EVENTS',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Wrap(
        spacing: 24,
        runSpacing: 24,
        alignment: WrapAlignment.center,
        children: [
      buildAstrologyevents(
        imagePath: 'assets/images/vastupooja7.png',
        description: 'Daily horoscopes and cosmic\nupdates to guide your day.',
        roleLabel: 'News Channel',
        backgroundColor: const Color(0xFFD9D9D9),
      ),
      buildAstrologyevents(
        imagePath: 'assets/images/vastupooja7.png',
        description: 'Daily horoscopes and cosmic\nupdates to guide your day',
        roleLabel: 'News Channel',
        backgroundColor: const Color(0xFFD9D9D9),
      ),
      buildAstrologyevents(
        imagePath: 'assets/images/vastupooja7.png',
        description: 'Daily horoscopes and cosmic\nupdates to guide your day',
        roleLabel: 'News Channel',
        backgroundColor: const Color(0xFFD9D9D9),
      ),
        ],
      )
      
          ),
        ],
      ),
    );
  }

  // ------------------ Reusable Image Card ------------------
Widget buildActressCard({
  required String imagePath,
  required String title,
  required String roleLabel,
  required Color backgroundColor,
}) {
  return Container(
    width: 300,
     height: 300,
    margin: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      color: Color(0xFFDFBC31),
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
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              child: Image.asset(
                imagePath,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -20, // Places the icon right between image and yellow box
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_circle_fill,
                    color: Colors.red,
                    size: 36,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 28), // space for icon overlap
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                roleLabel,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildPressMediaCard({
  required String imagePath,
  required String description,
  required String roleLabel,
  required Color backgroundColor,
}) {
  return Container(
    width: 300,
    height: 350,
    margin: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      color: Color(0xFFDFBC31),
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
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              child: Image.asset(
                imagePath,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -20,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.play_circle_fill,
                      color: Colors.red, size: 36),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 28),
        Column(
          children: [
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                roleLabel,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


Widget buildAstrologyevents({
  required String imagePath,
  required String description,
  required String roleLabel,
  required Color backgroundColor,
}) {
  return Container(
    width: 300,
    height: 350,
    margin: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      color: Color(0xFFD9D9D9),
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
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              child: Image.asset(
                imagePath,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -20,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.play_circle_fill,
                      color: Colors.red, size: 36),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 28),
        Column(
          children: [
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFFDC9323),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                roleLabel,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


Widget buildEngineersSection() {
  final zodiacSigns = [
    {'image': 'assets/images/zodiac1.png', 'label': 'Aries', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac2.png', 'label': 'Taurus', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac3.png', 'label': 'Gemini', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac4.png', 'label': 'Cancer', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac5.png', 'label': 'Leo', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac6.png', 'label': 'Virgo', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac7.png', 'label': 'Libra', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac8.png', 'label': 'Scorpio', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac9.png', 'label': 'Sagittarius', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac10.png', 'label': 'Capricorn', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac11.png', 'label': 'Aquarius', 'range': 'Apr 05-May 20'},
    {'image': 'assets/images/zodiac12.png', 'label': 'Pisces', 'range': 'Apr 05-May 20'},
  ];

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "CHOOSE YOUR ZODIAC SIGN",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 50),
        LayoutBuilder(
          builder: (context, constraints) {
            double totalSpacing = 5 * 40; // 6 per row means 5 gaps of 40
            double itemWidth = (constraints.maxWidth - totalSpacing) / 6;

            return Wrap(
              spacing: 40,
              runSpacing: 60,
              children: zodiacSigns.map((sign) {
                return SizedBox(
                  width: itemWidth,
                  child: buildZodiacCard(sign),
                );
              }).toList(),
            );
          },
        ),
      ],
    ),
  );
}

Widget buildZodiacCard(Map<String, dynamic> sign) {
  return Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/vector(1).png', // <- yellow blob image
            width: 65,
            height: 65,
            fit: BoxFit.contain,
          ),
          Image.asset(
            sign['image'],
            width: 28,
            height: 28,
            fit: BoxFit.contain,
          ),
        ],
      ),
      const SizedBox(height: 10),
      Text(
        sign['label'],
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        sign['range'],
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
      ),
    ],
  );
}




}
