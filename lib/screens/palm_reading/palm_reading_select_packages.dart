import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';

class PalmReadingSelectPackages extends StatefulWidget {
  const PalmReadingSelectPackages({super.key});

  @override
  State<PalmReadingSelectPackages> createState() =>
      _PalmReadingSelectPackagesState();
}

class _PalmReadingSelectPackagesState extends State<PalmReadingSelectPackages> {
  @override
  Widget build(BuildContext context) {
    return PalmReadingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),

            buildVastuBookingEnquiryFormPage(),
            SizedBox(height: 80),
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
                "Personalized Palm Reading by Experts",
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
              'assets/images/vastupooja18.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildVastuBookingEnquiryFormPage() {
    return Stack(
      children: [
        // 🌄 Full Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),

        // 🌑 Planet Image (top-right)
        Positioned(
          top: 100,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 80,
            width: 80,
          ),
        ),

        // 🌟 Foreground Content
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              const Text(
                "Select the Best Package for You",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),

              Container(
                width: 800,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          // Progress indicator
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 80),
                            child: Row(
                              children: [
                                // Step 1
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: Color(0xFF6B8E4B),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                // Line to step 2
                                Expanded(
                                  child: Container(
                                    height: 2,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                ),
                                // Step 2
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                // Line to step 3
                                Expanded(
                                  child: Container(
                                    height: 2,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                ),
                                // Step 3
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                // Line to step 4
                                Expanded(
                                  child: Container(
                                    height: 2,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                ),
                                // Step 4
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // First row - Basic Palm Insight and Dual Hand Reading
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildServiceCard(
                                title: "Basic Palm Insight",
                                price: "₹199",
                                features: [
                                  "Single palm analysis (left or right)",
                                  "Lifeline, heart line, brain line reading",
                                  "Basic personality overview",
                                ],
                              ),
                              const SizedBox(width: 20),
                              _buildServiceCard(
                                title: "Dual Hand Reading",
                                price: "₹399",
                                features: [
                                  "Analysis of both hands",
                                  "Life, career, and relationship insights",
                                  "Future predictions (short-term)",
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Second row - Complete Life Path Reading and Premium Consultation
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildServiceCard(
                                title: "Complete Life Path Reading",
                                price: "₹699",
                                features: [
                                  "Detailed reading of all 7 major lines",
                                  "Personality, health, career, love, and finance",
                                  "Hand shape & element type",
                                  "PDF report included",
                                ],
                              ),
                              const SizedBox(width: 20),
                              _buildServiceCard(
                                title: "Premium Consultation",
                                price: "₹999",
                                features: [
                                  "One-on-one live session with expert",
                                  "Complete palm analysis + Q&A",
                                  "Remedies & tips for challenges",
                                  "Personalized 15–20 min video call",
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Third row - Couples Compatibility Reading (centered)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildServiceCard(
                                title: "Couples Compatibility Reading",
                                price: "₹1199",
                                features: [
                                  "Palm reading for two people",
                                  "Relationship compatibility analysis",
                                  "Love and marriage prediction",
                                  "Suggestive remedies",
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 70),

                          // Buttons
                          Row(
                            children: [
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300,
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      'Back',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.go('/palm_reading_submit_info');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFFFFFFF),
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      'continue',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServiceCard({
    required String title,
    required String price,
    required List<String> features,
  }) {
    return Container(
      height: 400,
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // Divider line
            Container(width: double.infinity, height: 1, color: Colors.black),
            const SizedBox(height: 16),

            // Price
            Text(
              price,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE6B800),
              ),
            ),
            const SizedBox(height: 20),

            // Features list
            ...features.asMap().entries.map((entry) {
              int index = entry.key + 1;
              String feature = entry.value;
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$index. ",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        feature,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
