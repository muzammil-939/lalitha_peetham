import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

class OnlineMuhurthasAstrologerConsBook extends StatelessWidget {
  const OnlineMuhurthasAstrologerConsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 1000,
              height: 120,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Image
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: NetworkImage('assets/images/em6.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  // Text Content
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Astrologer Meera Sharma',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2D3748),
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '15 years of experience',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF718096),
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Speaks Hindi, English',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF718096),
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16),

                  // Book Appointment Button
                  GestureDetector(
                    onTap:
                        () => context.go(
                          '/online_muhurthas_astrologer_cons_book',
                        ),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4BB26),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Center(
                        child: Text(
                          'Book Appointment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildReviews(),
          ],
        ),
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
