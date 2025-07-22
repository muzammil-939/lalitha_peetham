import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingPackages extends StatefulWidget {
  const PanditBookingPackages({super.key});

  @override
  State<PanditBookingPackages> createState() => _PanditBookingPackagesState();
}

class _PanditBookingPackagesState extends State<PanditBookingPackages> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
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
                "Complete Ritual Packages with or without Samagri",
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
                "Choose Your Spiritual Package",
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
                          // Third row - Couples Compatibility Reading (centered)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildServiceCard1(
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
                          const SizedBox(height: 20),
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

            // Book now button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add your booking logic here
                  context.go('/pandit_booking_form');
                  print("Booking $title service");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF5C761),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  "Book now",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard1({
    required String title,
    required String price,
    required List<String> features,
  }) {
    return Container(
      height: 350,
      width: 450,
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

            // Book now button
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  // Add your booking logic here
                  context.go('/pandit_booking_form');
                  print("Booking $title service");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF5C761),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  "Book now",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
