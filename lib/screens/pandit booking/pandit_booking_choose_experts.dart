import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_expert_card_follow.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';

class PanditBookingChooseExperts extends StatefulWidget {
  const PanditBookingChooseExperts({super.key});

  @override
  State<PanditBookingChooseExperts> createState() =>
      _PanditBookingChooseExpertsState();
}

class _PanditBookingChooseExpertsState
    extends State<PanditBookingChooseExperts> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildherosection(),
            SizedBox(height: 40),
            PalmReadingExpertCardFollow(),
            SizedBox(height: 100),
            PandithContactSection(),
            SizedBox(height: 100),
            _buildExpertCard(),
            SizedBox(height: 100),
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
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "CHOOSE YOUR PANDIT, PERFORM DIVINE \nPOOJA!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
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

  Widget _buildExpertCard() {
    double cardWidth = MediaQuery.of(context).size.width / 3.5;
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children:
                astrologers.map((astro) {
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
                        // Bookmark icon
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.bookmark_border, size: 18),
                          ),
                        ),

                        // Profile image
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(astro["image"]),
                        ),

                        const SizedBox(height: 8),

                        // Stars
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) =>
                                Icon(Icons.star, size: 16, color: Colors.amber),
                          ),
                        ),

                        const SizedBox(height: 4),

                        // Orders
                        Text(
                          astro["orders"],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),

                        const SizedBox(height: 6),

                        // Name
                        Text(
                          astro["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),

                        // Price
                        Text(
                          "${astro["price"]} /min",
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 6),

                        // Services
                        const Text(
                          "Vastu & Energy Balancing\nTelugu",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),

                        // Experience
                        Text(
                          astro["exp"],
                          style: const TextStyle(fontSize: 12),
                        ),

                        const SizedBox(height: 10),

                        // Buttons row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              icon: const Icon(Icons.person, size: 14),
                              label: const Text(
                                "Follow",
                                style: TextStyle(fontSize: 12),
                              ),
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
                                context.go('/book_a_session_vastupooja');
                              },
                            ),
                            const SizedBox(width: 8),
                            Icon(Icons.chat, color: Colors.green, size: 20),
                            const SizedBox(width: 8),
                            Icon(Icons.call, color: Colors.green, size: 20),
                          ],
                        ),

                        const SizedBox(height: 12),

                        // Yellow bottom
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

  Widget buildAboutInfoSection() {
    return SizedBox(
      height: 550,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),

          // Foreground content with padding
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 150.0,
              vertical: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "🛕 About Sree Lalitha Peetham – Palm \nReading",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Sree Lalitha Peetham is a spiritual center dedicated \nto divine worship and Vedic practices. Along with \ntraditional poojas and homams, we offer trusted Palm Reading \nservices to guide individuals in their life journey. \nBy simply uploading a photo of your palm, you can receive \ndetailed insights about your career, health, marriage, \nand personality—all without the need for birth details.\nRooted in ancient wisdom, our goal is to make spiritual guidance \nsimple, sacred, and accessible to all.",

                        style: TextStyle(fontSize: 18, height: 1.6),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAC63E),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Color(0xFF000000), // Dark brown text
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 50),

                // Right side
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/images/vastupooja3.png',
                      height: 550,
                      width: 80,
                      fit: BoxFit.cover,
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

  Widget _buildFeaturesSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title with prayer hands emoji
          Row(
            children: [
              Text('🙏', style: TextStyle(fontSize: 24)),
              SizedBox(width: 8),
              Text(
                'Why Choose Us?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),

          // Spiritual Foundation
          _buildFeatureItem(
            icon: '☯️',
            title: 'Spiritual Foundation',
            description:
                'Backed by the divine energy of Sree Lalitha Peetham and rooted in Sanatana Dharma.',
          ),

          SizedBox(height: 30),

          // 100% Digital & Private
          _buildFeatureItem(
            icon: '📱',
            title: '100% Digital & Private',
            description:
                'Submit online and receive reports securely via email or app.',
          ),

          SizedBox(height: 30),

          // Experienced Palm Readers
          _buildFeatureItem(
            icon: '🙏',
            title: 'Experienced Palm Readers',
            description:
                'Our team blends Vedic wisdom with deep intuition and years of experience.',
          ),

          SizedBox(height: 30),

          // Detailed Insights & Remedies
          _buildFeatureItem(
            icon: '🔮',
            title: 'Detailed Insights & Remedies',
            description:
                'Know about your health, career, marriage, and life path—plus practical remedies.',
          ),

          SizedBox(height: 30),

          // Support in Regional Languages
          _buildFeatureItem(
            icon: '💬',
            title: 'Support in Regional Languages',
            description:
                'Available in Telugu, Hindi, and English for easy understanding.',
          ),

          SizedBox(height: 30),

          // Guided by Tradition, Delivered with Care
          _buildFeatureItem(
            icon: '🛡️',
            title: 'Guided by Tradition, Delivered with Care',
            description:
                'Every reading is done with devotion, accuracy, and spiritual responsibility.',
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem({
    required String icon,
    required String title,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon container
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Center(child: Text(icon, style: TextStyle(fontSize: 18))),
        ),
        SizedBox(width: 12),

        // Content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AstrologerContactpersonSection extends StatelessWidget {
  AstrologerContactpersonSection({super.key});

  final List<Map<String, dynamic>> astrologers = [
    {
      "name": "Shreephari",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34 / 3-4 MIN",
      "details": "Vedic, Numerology, Face Reading\nTelugu\nExp: 9 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "Shreephari",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34 / 3-4 MIN",
      "details": "Vedic, Numerology, Face Reading\nTelugu\nExp: 9 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "SHREEHARI",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34 / 3-4 MIN",
      "details": "Vedic, Numerology, Face Reading\nTelugu\nExp: 9 Years",
      "orders": "24541 Orders",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "“LET OUR ASTROLOGERS GUIDE YOU WITH EXPERT VASTU POOJA SERVICES FOR A BALANCED AND PROSPEROUS SPACE.”",

              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 350, // Increased height to prevent overflow
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: astrologers.length,
              separatorBuilder: (_, __) => const SizedBox(width: 20),
              itemBuilder: (context, index) {
                final astro = astrologers[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(astro["image"]),
                    ),
                    const SizedBox(height: 6),
                    const Icon(Icons.star_border, color: Colors.grey, size: 18),
                    Text(
                      astro["orders"],
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      astro["name"],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'CinzelDecorative',
                      ),
                    ),
                    Text(
                      astro["price"],
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        astro["details"],
                        style: const TextStyle(fontSize: 12, height: 1.4),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.go('/vastu_expert');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            index == 0 ? Colors.orange : Colors.transparent,
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.orange),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 6,
                        ),
                        elevation: 0,
                      ),
                      child: const Text("Contact"),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, size: 10, color: Colors.orange),
              SizedBox(width: 6),
              Icon(Icons.circle_outlined, size: 10, color: Colors.black),
              SizedBox(width: 6),
              Icon(Icons.circle_outlined, size: 10, color: Colors.black),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: const Text(
              "View all",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
