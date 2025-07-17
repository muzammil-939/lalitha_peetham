import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img2.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographySubsPackages extends StatefulWidget {
  const PhotographySubsPackages({super.key});

  @override
  State<PhotographySubsPackages> createState() => _PhotographySubsPackagesState();
}

class _PhotographySubsPackagesState extends State<PhotographySubsPackages> {
  @override
  Widget build(BuildContext context) {
    return PhotographyLayout(
      child: Column(
        children: [
          PhotographyHeroImg2(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFF6B8E4B)),
              padding: EdgeInsets.all(80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Section
                  Text(
                    'Your Journey Starts Here: Browse Our Exclusive Packages',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 60),

                  // First Row - Basic, Standard, Premium
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: _buildPackageCard(
                            title: 'Basic Package',
                            price: '₹7,000',
                            features: [
                              '2 hours of photography',
                              '50 edited photos',
                              'Online gallery delivery',
                              'Suitable for portraits & small events',
                            ],
                            buttonColor: Color(0xFFD4A853),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: _buildPackageCard(
                            title: 'Standard Package',
                            price: '₹15,000',
                            features: [
                              '4 hours of coverage',
                              '100 edited photos',
                              'Highlight video (1-2 mins)',
                              'Online + USB delivery',
                            ],
                            buttonColor: Color(0xFFD4A853),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: _buildPackageCard(
                            title: 'Premium Package',
                            price: '₹25,000',
                            features: [
                              'Full-day (up to 8 hours)',
                              '300+ edited photos',
                              'Highlight video (3-5 mins)',
                              'Photo album (30 pages)',
                              'Online gallery + USB',
                            ],
                            buttonColor: Color(0xFFD4A853),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),

                  // Second Row - Wedding Packages
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: _buildPackageCard(
                            title: 'Wedding Package',
                            price: '₹40,000',
                            features: [
                              '3 days coverage',
                              'Pre-wedding shoot included',
                              '300+ edited photos',
                              'Full-length wedding film',
                              'Premium photo album (50 pages)',
                              'Drone shots included',
                              'Online gallery + USB',
                            ],
                            buttonColor: Color(0xFFD4A853),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: _buildPackageCard(
                            title: 'Wedding Package',
                            price: '₹65,000',
                            features: [
                              '3 days complete coverage',
                              'Pre-wedding + Haldi + Wedding + Reception',
                              '500+ edited photos',
                              'Cinematic wedding film (5-10 mins)',
                              '5 premium albums',
                              'Drone, teaser video, and raw files',
                              'Hard drive delivery',
                            ],
                            buttonColor: Color(0xFFD4A853),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(), // Empty space to maintain layout
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhotographyFaq(),
        ],
      ),
    );
  }

  Widget _buildPackageCard({
    required String title,
    required String price,
    required List<String> features,
    required Color buttonColor,
  }) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Package Title
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 16),

          // Price
          Text(
            price,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFFD4A853),
            ),
          ),
          SizedBox(height: 24),

          // Features List
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  features
                      .map(
                        (feature) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '• ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  feature,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    height: 1.3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
          SizedBox(height: 30),

          // Book Now Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle booking
                context.go('/photography_paymentsStatus');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 0,
              ),
              child: Text(
                'Book now',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
