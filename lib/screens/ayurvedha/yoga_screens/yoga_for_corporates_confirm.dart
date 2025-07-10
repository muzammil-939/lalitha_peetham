import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class YogaForCorporatesConfirm extends StatelessWidget {
  const YogaForCorporatesConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: Column(
          children: [
            _buildBreadcrumb(),
            SizedBox(
              width: double.infinity,
              // height: 600,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Main content area
                  Container(
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Main image container with golden border
                          Container(
                            width: double.infinity,
                            height: 450,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFC1B11F),
                                width: 8,
                              ),
                            ),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/corporate_yoga.png',
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[300],
                                    child: Icon(
                                      Icons.image,
                                      size: 50,
                                      color: Colors.grey,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),

                          SizedBox(height: 20),
                          _buildSelectionInfo(),
                          SizedBox(height: 20),

                          // Join Now button
                          Container(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFC1B11F),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'CONFIRM',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Right content panel
                  Container(
                    width: 700,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          'CORPORATES YOGA \nSPECIALIST',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            height: 1.3,
                          ),
                        ),

                        SizedBox(height: 20),

                        // Instructor name
                        Text(
                          'SWETHA S',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),

                        SizedBox(height: 14),

                        // Price
                        Row(
                          children: [
                            Text(
                              '₹2,199.00',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '₹1,850.00/month',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFC1B11F),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),

                        // Category and language
                        Row(
                          children: [
                            Text(
                              'Mindful Meditation, Chakra Meditation',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(width: 4),
                            Text('🏆', style: TextStyle(fontSize: 10)),
                          ],
                        ),

                        SizedBox(height: 8),

                        Text(
                          'Telugu',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          'Exp: 9 Years',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),

                        SizedBox(height: 20),

                        // Key Features
                        Text(
                          'KEY FEATURES',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),

                        SizedBox(height: 14),

                        _buildFeatureText('Duration: 45 Minutes Add'),
                        _buildFeatureText(
                          'Training Style: Friendly, Beginner - Friendly Classes',
                        ),
                        _buildFeatureText(
                          'Format: Guided Online Meditation With Live Instructor',
                        ),
                        _buildFeatureText(
                          'Approach: Breath Awareness, Present Focus',
                        ),
                        _buildFeatureText(
                          'Practice Style: Consistent Daily Practice For Mind Clarity',
                        ),

                        SizedBox(height: 20),

                        // What you'll achieve
                        Text(
                          'WHAT YOU\'LL ACHIEVE (IN 3 MONTHS):',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),

                        SizedBox(height: 14),

                        _buildAchievementText(
                          'Improved Focus & Mental Clarity',
                        ),
                        _buildAchievementText(
                          'Reduced Stress & Better Emotional Balance',
                        ),
                        _buildAchievementText(
                          'A Deeper Connection With Yourself',
                        ),
                        _buildAchievementText(
                          'Confidence And Inner Strength In Daily Life',
                        ),

                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
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
              Text(
                '  / YOGA // YOGA FOR CORPORATES(KARYA YOGA)',
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
    );
  }

  Widget _buildSelectionInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Online Status Row
        Row(
          children: [
            Text(
              'Online',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            SizedBox(width: 12),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.amber, width: 3),
              ),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 16),

        // Offline Status Row
        Row(
          children: [
            Text(
              'Offline',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            SizedBox(width: 12),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey[600]!, width: 3),
              ),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 24),

        // Time Slot
        Text(
          'Time Slot : 3.45 Pm (Daily)',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),

        SizedBox(height: 20),

        // Starting Date
        Text(
          'Starting Date : 21/07/2025',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),

        SizedBox(height: 20),

        // Location
        Text(
          'Location : Flat No. 6, Oak Residency,\nVarthur Main Road, Whitefield,\nBengaluru – 560066,\nKarnataka, India',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
            height: 1.4,
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureText(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.grey[600], height: 1.3),
      ),
    );
  }

  Widget _buildAchievementText(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '✓ ',
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 9,
                color: Colors.grey[600],
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
