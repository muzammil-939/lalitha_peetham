import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';

class PanditBookingGaneshPooja extends StatefulWidget {
  const PanditBookingGaneshPooja({super.key});

  @override
  State<PanditBookingGaneshPooja> createState() =>
      _PanditBookingGaneshPoojaState();
}

class _PanditBookingGaneshPoojaState extends State<PanditBookingGaneshPooja> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            SizedBox(height: 80),
            buildAboutInfoSection(),
            SizedBox(height: 80),
            _buildAboutInfo(),
            SizedBox(height: 100),
            PandithContactSection(),
            buildPanditBookingFaqWid(),
          ],
        ),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/images/pandit_booking_pooja2',
                      height: 550,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(width: 50),

                // Right side
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "The Power and Purpose of\nWorshipping Lord Ganesha",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "🐘 About Ganesh Puja",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () => context.go('/pandit_booking_packages'),
                        child: Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFDC9323),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              'View Packages',
                              style: TextStyle(
                                color: Color(0xFF000000), // Dark brown text
                                fontSize: 16,
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
          ),
        ],
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
                "JOURNEY INTO DEVOTION: DISCOVER THE \nDEEPER PURPOSE OF SATYANARAYANA POOJA",
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
              'assets/images/pandit_booking_home',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAboutInfo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main description paragraph
          Text(
            'Ganesh Puja Is A Revered Hindu Ritual Dedicated To Lord Ganapati, The Elephant-Headed Deity Known As The Remover Of Obstacles And Lord Of Wisdom. Worshipped Before All Beginnings, Lord Ganapati Symbolizes Clarity, Intellect, And Success.',
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 24),

          // A Glimpse Into Ganapati's Glory section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(
                  color: Color(0xFFB5956C),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A Glimpse Into Ganapati\'s Glory',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Born Of Goddess Parvati And Brought To Life With Divine Energy, Lord Ganapati Is The Guardian Of New Ventures And The Guide For Students, Artists, And Seekers. His Presence Is Invoked At The Start Of Any Journey, Ritual, Or Celebration.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // Core Rituals In Ganesh Puja section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(
                  color: Color(0xFFE6D5B7),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Icon(
                  Icons.auto_awesome_outlined,
                  size: 12,
                  color: Color(0xFFB5956C),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Core Rituals In Ganesh Puja',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildBulletPoint(
                      'Pranapratishtha: Inviting Lord Ganapati Into The Idol.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Shodashopachara: Sixteen-Step Worship With Offerings And Mantras.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Ganapati Atharvashirsha: A Sacred Chant That Invokes His Grace.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Modak Offering: His Favorite Sweet, Offered With Devotion.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Visarjan: Immersing The Idol In Water, Symbolizing Release And Renewal.',
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // Why Ganesh Puja Matters section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('⭐', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Why Ganesh Puja Matters',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Removes Obstacles In Life And Work.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Boosts Knowledge And Memory For Learners.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Inspires Creativity Among Artists And Thinkers.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Guides Spiritual Growth Through Devotion And Reflection.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // In Essence section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('🛕', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'In Essence',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Ganesh Puja is more than tradition—it\'s a powerful spiritual connection. In his form, devotees find strength, wisdom, and the courage to begin anew. With his blessings, every path becomes clearer, every challenge more conquerable.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 4,
          height: 4,
          margin: EdgeInsets.only(top: 8, right: 12),
          decoration: BoxDecoration(
            color: Color(0xFF2C2C2E),
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPanditBookingFaqWid() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // FAQ Header
          const Text(
            'GANESHA PUJA- FAQS ',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xffD9B002),
              height: 1.2,
            ),
          ),

          const SizedBox(height: 48),

          // FAQ Items
          Column(
            children: [
              _buildFAQItem('What is the significance of Ganesh Pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('When is the best time to perform Ganesh Pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('What items are required for Ganesh Pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('Can I perform Ganesh Pooja at home by myself?'),
              const SizedBox(height: 16),
              _buildFAQItem('What is the significance of the ganesha Katha?'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFAQItem(String question) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF0E8BD),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              question,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.4,
              ),
            ),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 24),
        ],
      ),
    );
  }
}
