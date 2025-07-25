import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

class OnlineMuhurthasHome extends StatelessWidget {
  const OnlineMuhurthasHome({super.key});

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            // Main Hero Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Container(
                width: double.infinity,
                height: 500,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('online_muhurthas_home.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Title
                    const Text(
                      'Find Your Auspicious\nMuhurtam for Any Event',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Subtitle
                    const Text(
                      'Discover the perfect timing for your\nimportant life events, ensuring\nsuccess and harmony with the\ncosmos.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Search Bar
                    Container(
                      width: 400,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                'Select Event Type',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD4AF37), // Gold color
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 60),

            // Popular Event Categories
            const Text(
              'Popular Event Categories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Category Pills
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _buildCategoryPill('Wedding'),
                _buildCategoryPill('Housewarming'),
                _buildCategoryPill('Engagement'),
                _buildCategoryPill('Baby Naming'),
                _buildCategoryPill('Business Launch'),
                _buildCategoryPill('Travel'),
              ],
            ),

            const SizedBox(height: 60),

            // Featured Muhurtams
            const Text(
              'Featured Muhurtams',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Feature Cards
            Row(
              children: [
                Expanded(
                  child: _buildFeatureCard(
                    'online_muhurthas_wed.png', // You'll need to add these images
                    'Wedding Muhurtam',
                    'Find the perfect time for your wedding.',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildFeatureCard(
                    'assets/images/online_muhurthas_hw.png',
                    'Housewarming Muhurtam',
                    'Find the perfect time to move into your new home.',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildFeatureCard(
                    'assets/images/online_muhurthas_baby.png',
                    'Baby Naming Muhurtam',
                    'Find the perfect time to name your baby.',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // Consultation Section
            const Text(
              'Consult with Expert Astrologers',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Consultation Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Get Personalized Muhurtam Recommendations',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Connect with experienced astrologers for personalized guidance on selecting the most auspicious timing for your events.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD4AF37),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Book a Consultation',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 160,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/online_muhurthas_pers.png',
                        ), // Add this image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),
            const Text(
              'What Our Users Say',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            _buildReviews(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryPill(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE0B2), // Light orange
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String imagePath, String title, String description) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviews() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(right: 200, top: 30, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Star Rating Distribution
          // Column(
          //   children: [
          //     _buildRatingRow("5.0", 2823, 1.0),
          //     const SizedBox(height: 4),
          //     _buildRatingRow("4.0", 38, 0.15),
          //     const SizedBox(height: 4),
          //     _buildRatingRow("3.0", 4, 0.05),
          //     const SizedBox(height: 4),
          //     _buildRatingRow("2.0", 0, 0.0),
          //     const SizedBox(height: 4),
          //     _buildRatingRow("1.0", 0, 0.0),
          //   ],
          // ),
          const SizedBox(height: 25),

          // Overall Rating Stars
          // Row(
          //   children: List.generate(
          //     5,
          //     (index) => const Icon(Icons.star, color: Colors.amber, size: 16),
          //   ),
          // ),
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
