import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_layout.dart';

class SannaiMelamWelcomeScreens extends StatefulWidget {
  const SannaiMelamWelcomeScreens({super.key});

  @override
  State<SannaiMelamWelcomeScreens> createState() => _SannaiMelamWelcomeScreensState();
}

class _SannaiMelamWelcomeScreensState extends State<SannaiMelamWelcomeScreens> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SannaiMelamLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            _buildBreadcrumb(),
            const SizedBox(height: 40),

            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(60),
              decoration: BoxDecoration(
                color: const Color(0xFFD4BB26),
                border: Border.all(width: 40, color: const Color(0xFF756F2C)),
              ),
              child: Row(
                children: [
                  // Left Text
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BOOK TRADITIONAL SANNAI MELAM ARTISTS ONLINE –\nQUICK, AUTHENTIC &\nHASSLE-FREE',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {
                            context.go('/sanni_function_deatis');
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 30),

                  // Right Images
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: _buildCircleImage('assets/images/sannai_melam_image2.png'),
                            ),
                            const SizedBox(width: 3),
                            Expanded(
                              child: _buildCircleImage('assets/images/sannai_melam_image1.png',size: 150),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.center,
                          child: _buildCircleImage('assets/images/sannai_melam_imag3.png', size: 150),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 60),

            // Description Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sannai Melam',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Sannai Melam, Also Known As Nadaswaram Brundam, Is One Of The Most Beloved Classical\nMusical Instruments In South Indian Culture. It Is Commonly Featured At Traditional Events Such\nAs Weddings And Various Functions Across South India, Typically Performed Both Inside And\nOutside The Venue.',
                    style: TextStyle(height: 1.6),
                  ),

                  const SizedBox(height: 40),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Key Insights:', style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 12),
                            Text('• Sannai Melam For Gruhapravesh Puja, Wedding, Upanayanam, Openings Etc'),
                            Text('• Providing A Genuine & Professional Nadaswaram Players For Every Event.'),
                            Text('• Dolu Sannai Will Be Played A Music With Tradition.'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Our Promise:', style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 12),
                            Text('• Professional & Experienced Nadaswaram Players.'),
                            Text('• Will Perform The Entire Ritual In Vedic Procedures & Standards.'),
                            Text('• Professional Guidance & Effective Support.'),
                            Text('• Sannai Melam Musicians Will Come In Traditional Dresses.'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  Row(
                    children: const [
                      Text('Description', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 20),
                      Text('FAQ'),
                      SizedBox(width: 20),
                      Text('Reviews (0)'),
                    ],
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'Top Sannai Melam Services –\n Nadaswaram Players',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'When It Comes To Celebrating Traditional Events In Hyderabad, Poojalu.Com Stands Out As\nThe Premier Provider Of Sannai Melam Services. Our Team Of Skilled Musicians Is\nDedicated To Delivering Authentic And Soul-Stirring Performances That Enhance The\nSignificance Of Your Special Occasions.\n\nAt Poojalu.Com, We Understand The Importance Of Sannai Melam, Also Known As\nNadaswaram Brundam, In South Indian Culture. Whether You’re Planning A Wedding,\nGruhapravesh Puja, Upanayanam, Or Any Other Ceremony, Our Experienced Nadaswaram\nPlayers Will Create An Unforgettable Atmosphere With Their Captivating Music. Dressed In\nTraditional Attire, Our Musicians Bring Both Authenticity And Professionalism To Every\nEvent.\n\nWe Pride Ourselves On Our Commitment To Excellence,\nEnsuring That Every Performance\nAdheres To Vedic Procedures And Standards. Our Team Is Not\nOnly Passionate About\nMusic But Also Provides Expert Guidance And Support To Help\nYou Plan The Perfect\nMusical Accompaniment For Your Celebration.\n\nChoose Poojalu.Com For Your Sannai Melam Needs And Experience The Magic Of\nTraditional South Indian Music. Let Us Help You Create Cherished Memories That Will Last A\nLifetime!'
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            Text(' // Sannai Melam', style: TextStyle(color: Colors.black)),
            Text(' // Sannai Melam Online Booking', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleImage(String path, {double size = 100}) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
