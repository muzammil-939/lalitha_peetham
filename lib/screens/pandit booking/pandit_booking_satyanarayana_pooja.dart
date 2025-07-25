import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';

class PanditBookingSatyanarayanaPooja extends StatefulWidget {
  const PanditBookingSatyanarayanaPooja({super.key});

  @override
  State<PanditBookingSatyanarayanaPooja> createState() =>
      _PanditBookingSatyanarayanaPoojaState();
}

class _PanditBookingSatyanarayanaPoojaState
    extends State<PanditBookingSatyanarayanaPooja> {
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
                      'assets/images/pandith_booking_pooja1.png',
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
                        "Discover the Spiritual \nSignificance of Satyanarayana \nPooja",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "🕉️ About Satyanarayana Puja",
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
                "JOURNEY INTO DEVOTION: DISCOVER THE \nDEEPER PURPOSE OF GANESH POOJA",
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

  Widget _buildAboutInfo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main description paragraph
          Text(
            'Satyanarayana Puja Is A Sacred Hindu Ritual Dedicated To Lord Vishnu, Worshipped In His Truthful Form—Satyanarayana, The Lord Of Truth. Performed On Auspicious Occasions Like Purnima, Housewarmings, Weddings, Or Fulfilling Vows, The Puja Seeks Blessings For Peace, Prosperity, And Spiritual Well-Being.',
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 24),

          // Significance Of Satyanarayana Katha section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('📖', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Significance Of Satyanarayana Katha',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Central To The Puja Is The Satyanarayana Katha—A Divine Story That Highlights The Power Of Truth, Faith, And Devotion. Through Tales Of Kings, Merchants, And Commoners, It Reminds Us That Sincere Worship Leads To Divine Blessings.',
                      style: TextStyle(
                        fontSize: 16,
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

          // Puja Procedure At A Glance section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('🙏', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Puja Procedure At A Glance',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 18),
                    _buildNumberedPoint(
                      '1.',
                      'Preparation: Clean And Decorate The Space With Flowers, Rangoli, And Puja Items.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '2.',
                      'Invocation: Chant Mantras To Invite Lord Satyanarayana\'s Presence.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '3.',
                      'Offerings: Present Fruits, Sweets, Flowers, And Devotion.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '4.',
                      'Katha Recital: Read Or Listen To The Satyanarayana Katha With Sincerity.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '5.',
                      'Aarti: Light A Lamp And Sing Praises To The Lord.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '6.',
                      'Prasad: Distribute The Sacred Offerings To All.',
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // Why Perform The Puja? section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('⭐', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Why Perform The Puja?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'This Puja Is Believed To Remove Obstacles, Attract Positive Energy, And Promote Harmony And Happiness. Open To All, Regardless Of Religion Or Background, It\'s A Moment Of Spiritual Unity And Divine Connection.',
                      style: TextStyle(
                        fontSize: 16,
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

          // Conclusion section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('🛕', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Conclusion',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Satyanarayana Puja is not just a ritual—it\'s a celebration of truth, devotion, and divine grace. A timeless tradition that strengthens families, uplifts communities, and brings light to our lives.',
                      style: TextStyle(
                        fontSize: 16,
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

  Widget _buildNumberedPoint(String number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          child: Text(
            number,
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 4),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
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
            'SATYANARAYAN PUJA- FAQS ',
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
              _buildFAQItem('What is Satyanarayana Pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('When should Satyanarayana Pooja be performed?'),
              const SizedBox(height: 16),
              _buildFAQItem('Who can perform Satyanarayana Pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('What items are needed for the pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('How long does the pooja take?'),
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
