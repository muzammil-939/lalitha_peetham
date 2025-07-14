import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class YogaForCorporatesOrder extends StatelessWidget {
  const YogaForCorporatesOrder({super.key});

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
                  // Left sidebar with small images
                  Container(
                    width: 100,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Column(
                      children: [
                        _buildSidebarImage(
                          'assets/images/corporate_yoga.png',
                          isSelected: true,
                        ),
                        SizedBox(height: 12),
                        _buildSidebarImage('assets/images/corporate_yoga.png'),
                        SizedBox(height: 12),
                        _buildSidebarImage('assets/images/corporate_yoga.png'),
                        SizedBox(height: 12),
                        _buildSidebarImage('assets/images/corporate_yoga.png'),
                      ],
                    ),
                  ),

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
                          // Video thumbnail with play button
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFC1B11F),
                                width: 8,
                              ),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    'assets/images/corporate_yoga.png',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: Icon(
                                          Icons.image,
                                          size: 30,
                                          color: Colors.grey,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.8),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 24,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          // Join Now button
                          Container(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () {
                                context.go('/yoga_for_corporates_confirm');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFC1B11F),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'BOOK NOW',
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
                    width: 600,
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

                        // Ratings
                        Text(
                          'RATINGS & REVIEWS',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            ...List.generate(
                              4,
                              (index) => Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.amber,
                              ),
                            ),
                            Icon(
                              Icons.star_border,
                              size: 16,
                              color: Colors.grey[400],
                            ),
                          ],
                        ),

                        SizedBox(height: 4),

                        Text(
                          '24541 Orders',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _buildReviews(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebarImage(String imagePath, {bool isSelected = false}) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Color(0xFFC1B11F) : Colors.transparent,
          width: 4,
        ),
      ),
      child: ClipRRect(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey[300],
              child: Icon(Icons.image, size: 20, color: Colors.grey),
            );
          },
        ),
      ),
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

  Widget _buildReviews() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(right: 200, top: 75, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Star Rating Distribution
          Column(
            children: [
              _buildRatingRow("5.0", 2823, 1.0),
              const SizedBox(height: 4),
              _buildRatingRow("4.0", 38, 0.15),
              const SizedBox(height: 4),
              _buildRatingRow("3.0", 4, 0.05),
              const SizedBox(height: 4),
              _buildRatingRow("2.0", 0, 0.0),
              const SizedBox(height: 4),
              _buildRatingRow("1.0", 0, 0.0),
            ],
          ),

          const SizedBox(height: 25),

          // Overall Rating Stars
          Row(
            children: List.generate(
              5,
              (index) => const Icon(Icons.star, color: Colors.amber, size: 16),
            ),
          ),

          const SizedBox(height: 32),

          // Review 1
          _buildReviewItem(
            "These 45 minutes changed my life – I feel calmer and more in control every day.",
            "July 2, 2020 03:29 PM",
            "DARRELL STEWART",
            "assets/images/profile1.jpg", // Replace with actual asset path
            128,
          ),

          const SizedBox(height: 24),

          // Review 2
          _buildReviewItem(
            "Stress used to rule my day. Now, I handle things with peace and clarity.",
            "July 2, 2020 1:04 PM",
            "DARLENE ROBERTSON",
            "assets/images/profile2.jpg", // Replace with actual asset path
            82,
          ),

          const SizedBox(height: 24),

          // Review 3
          _buildReviewItem(
            "I've tried many apps, but nothing matched the live, personal experience here.",
            "June 26, 2020 10:03 PM",
            "KATHRYN MURPHY",
            "assets/images/profile3.jpg", // Replace with actual asset path
            9,
          ),

          const SizedBox(height: 24),

          // Review 4
          _buildReviewItem(
            "Consistent, soothing, and effective – I'm a different person now.",
            "July 7, 2020 10:14 AM",
            "RONALD RICHARDS",
            "assets/images/profile4.jpg", // Replace with actual asset path
            124,
          ),
        ],
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

  Widget _buildRatingRow(String rating, int count, double fillPercentage) {
    return Row(
      children: [
        SizedBox(
          width: 25,
          child: Text(
            rating,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.star, color: Colors.amber, size: 14),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(3),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: fillPercentage,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 40,
          child: Text(
            count.toString(),
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReviewItem(
    String reviewText,
    String date,
    String name,
    String profileImage,
    int likes,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Five stars
        Row(
          children: List.generate(
            5,
            (index) => const Icon(Icons.star, color: Colors.amber, size: 14),
          ),
        ),

        const SizedBox(height: 12),

        // Review text
        Text(
          reviewText,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
            height: 1.4,
          ),
        ),

        const SizedBox(height: 8),

        // Date
        Text(
          date,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(height: 16),

        // Profile row
        Row(
          children: [
            // Profile image
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage(profileImage),
              onBackgroundImageError: (exception, stackTrace) {
                // Handle image loading error
              },
              child:
                  profileImage.isEmpty
                      ? Icon(Icons.person, size: 16, color: Colors.grey[600])
                      : null,
            ),

            const SizedBox(width: 12),

            // Name
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            // Like button and count
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                  size: 16,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 6),
                Text(
                  likes.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 16),
                Icon(
                  Icons.thumb_down_outlined,
                  size: 16,
                  color: Colors.grey[600],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
