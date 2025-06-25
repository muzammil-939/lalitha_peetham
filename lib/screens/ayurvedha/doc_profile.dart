import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class DocProfile extends StatefulWidget {
  const DocProfile({super.key});

  @override
  State<DocProfile> createState() => _DocProfileState();
}

class _DocProfileState extends State<DocProfile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AyurvedhPageLayout(
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFD4BB26),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, size: 16, color: Colors.black),
                    Text(
                      ' // ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'Ayurvedha Consultancy',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' // ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'All Doctor',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' // ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'Doctor Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 1.25,
            child: Stack(
              children: [
                SizedBox(
                  height: screenHeight * 0.75,
                  width: screenWidth,
                  child: Stack(
                    children: [
                      // Background image
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/background.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: SizedBox(
                          width: screenWidth * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [_buildDocInfo(context)],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(bottom: 0, child: _buildDocInfoImage(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDocInfo(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: 280,
      height: screenHeight * 0.75,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Doctor Name
          const Text(
            'DR. BABA',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              letterSpacing: 0.5,
            ),
          ),

          const SizedBox(height: 8),

          // Qualifications
          const Text(
            'M.D(Ayurved) / M.S (Ayurved)',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 12),

          // Clinic Info
          const Text(
            'Clinic: Pradnya Clinic',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 16),

          // Specializations
          _buildSpecialization('Rheumatology'),
          const SizedBox(height: 8),
          _buildSpecialization('General Cases'),
          const SizedBox(height: 8),
          _buildSpecialization('Piles / Fissure / Fistula'),
          const SizedBox(height: 8),
          _buildSpecialization('All Case Discussions'),

          const SizedBox(height: 16),

          // Rating Section
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Review(S) / No Rating / Points : 100',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Consult Button
          Container(
            width: double.infinity,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xFFD4BB26), // Golden yellow color
            ),
            child: const Center(
              child: Text(
                'CONSULT THIS DOCTOR',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialization(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.grey[800]!, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildDocInfoImage(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      margin: const EdgeInsets.all(20),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Main card
          Container(
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Main content section with pale yellow background
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0E7BB),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Profile image
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            color: Colors.grey.shade300,
                            child: Image.asset(
                              'assets/images/doctor2.png',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey.shade400,
                                  child: const Icon(
                                    Icons.person,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),

                      // Contact Details section
                      const Text(
                        'CONTACT DETAILS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'House Number 704,\nPrasanthnagar,\nUlloor, Mc\nPo, Trivandrum,\nThiruvananthapur\nam, 695011. India.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6B5B47),
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 25),

                      // Share Profile section
                      const Text(
                        'SHARE PROFILE ON',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          _buildSocialIcon(
                            Icons.facebook,
                            const Color(0xFF1877F2),
                          ),
                          const SizedBox(width: 10),
                          _buildSocialIcon(Icons.close, Colors.black),
                          const SizedBox(width: 10),
                          _buildSocialIcon(
                            Icons.camera_alt_outlined,
                            const Color(0xFFE4405F),
                          ),
                          const SizedBox(width: 10),
                          _buildSocialIcon(
                            Icons.business,
                            const Color(0xFF0A66C2),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Yellow bottom accent strip
                Container(
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE8D41F),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 30),

          // Experience description text outside the card
          SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Experienced As Medical Officer In Govt Service And Also As Lecturer In Govt Ayu College Trivandrum. Now Working As Lecturer In Govt Ayurveda Medical College, Thripunithura, Cochin, Kerala.Former Lecturer In Pankala Kasthuri Ayurveda College Trivandrum , Former Associate Professor In SN Ayurveda College Puthoor, Kollam, Experience As Lecturer In Govt.Ayurveda College Kannur And Trivandrum',
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF000000),
                  height: 1.6,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, Color color) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
