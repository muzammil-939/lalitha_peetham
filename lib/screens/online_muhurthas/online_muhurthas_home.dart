import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class OnlineMuhurthasHome extends StatelessWidget {
  const OnlineMuhurthasHome({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final horizontalPadding = isMobile ? 16.0 : isTablet ? 64.0 : 200.0;

    return OnlineMuhurthasLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: isMobile ? 24 : 40),

            /// Hero Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 100),
              child: Container(
                width: double.infinity,
                height: isMobile ? 300 : isTablet ? 400 : 500,
                padding: EdgeInsets.all(isMobile ? 16 : 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/online_muhurthas_home.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Find Your Auspicious\nMuhurtam for Any Event',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile ? 20 : isTablet ? 28 : 36,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Discover the perfect timing for your\nimportant life events, ensuring\nsuccess and harmony with the\ncosmos.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: isMobile ? 12 : 16,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      width: isMobile ? double.infinity : 400,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(Icons.search, color: Colors.grey, size: 20),
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
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4AF37),
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

            const SizedBox(height: 40),

            /// Popular Event Categories
            _sectionTitle(context, 'Popular Event Categories'),
            const SizedBox(height: 20),
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

            const SizedBox(height: 40),

            /// Featured Muhurtams
            _sectionTitle(context, 'Featured Muhurtams'),
            const SizedBox(height: 20),
            isMobile
                ? Column(
                    children: [
                      _buildFeatureCard( 'assets/images/online_muhurthas_wed.png', // You'll need to add these images
                    'Wedding Muhurtam',
                    'Find the perfect time for your wedding.',),
                      const SizedBox(height: 12),
                      _buildFeatureCard( 'assets/images/online_muhurthas_hw.png',
                    'Housewarming Muhurtam',
                    'Find the perfect time to move into your new home.',),
                      const SizedBox(height: 12),
                      _buildFeatureCard('assets/images/online_muhurthas_baby.png',
                    'Baby Naming Muhurtam',
                    'Find the perfect time to name your baby.',),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(child: _buildFeatureCard('assets/images/online_muhurthas_wed.png', // You'll need to add these images
                    'Wedding Muhurtam',
                    'Find the perfect time for your wedding.')),
                      const SizedBox(width: 12),
                      Expanded(child: _buildFeatureCard('assets/images/online_muhurthas_hw.png',
                    'Housewarming Muhurtam',
                    'Find the perfect time to move into your new home.',)),
                      const SizedBox(width: 12),
                      Expanded(child: _buildFeatureCard('assets/images/online_muhurthas_baby.png',
                    'Baby Naming Muhurtam',
                    'Find the perfect time to name your baby.',)),
                    ],
                  ),

            const SizedBox(height: 40),

            /// Consultation Section
            _sectionTitle(context, 'Consult with Expert Astrologers'),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(isMobile ? 16 : 24),
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
              child: isMobile
                  ? Column(
                      children: [
                        _consultationTextSection(),
                        const SizedBox(height: 20),
                        _consultationImage(),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(child: _consultationTextSection()),
                        const SizedBox(width: 20),
                        _consultationImage(),
                      ],
                    ),
            ),

            const SizedBox(height: 40),

            /// User Reviews
            _sectionTitle(context, 'What Our Users Say'),
            const SizedBox(height: 20),
            _buildReviews(context),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: isMobile ? 16 : 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCategoryPill(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE0B2),
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
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
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
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12, color: Colors.grey, height: 1.3),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _consultationTextSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Get Personalized Muhurtam Recommendations',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 12),
        const Text(
          'Connect with experienced astrologers for personalized guidance on selecting the most auspicious timing for your events.',
          style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.4),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4AF37),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            'Book a Consultation',
            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _consultationImage() {
    return Container(
      width: 160,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage('assets/images/online_muhurthas_pers.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildReviews(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Padding(
      padding: EdgeInsets.only(right: isMobile ? 16 : 200, bottom: 100),
      child: Column(
        children: [
          _buildReviewItem(
            'These 45 minutes changed my life – I feel calmer and more in control every day.',
            'July 2, 2020 03:29 PM',
            'DARRELL STEWART',
            'assets/images/person.jpg',
            128,
          ),
          const SizedBox(height: 24),
          _buildReviewItem(
            'Stress used to rule my day. Now, I handle things with peace and clarity.',
            'July 2, 2020 1:04 PM',
            'DARLENE ROBERTSON',
            'assets/images/person2.jpg',
            82,
          ),
          const SizedBox(height: 24),
          _buildReviewItem(
            'I\'ve tried many apps, but nothing matched the live, personal experience here.',
            'June 26, 2020 10:03 PM',
            'KATHRYN MURPHY',
            'assets/images/person.jpg',
            9,
          ),
          const SizedBox(height: 24),
          _buildReviewItem(
            'Consistent, soothing, and effective – I\'m a different person now.',
            'July 7, 2020 10:14 AM',
            'RONALD RICHARDS',
            'assets/images/person2.jpg',
            124,
          ),
        ],
      ),
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
        Row(children: List.generate(5, (_) => const Icon(Icons.star, color: Colors.amber, size: 14))),
        const SizedBox(height: 12),
        Text(
          reviewText,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87, height: 1.4),
        ),
        const SizedBox(height: 8),
        Text(date, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
        const SizedBox(height: 16),
        Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(profileImage),
              backgroundColor: Colors.grey[300],
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87),
              ),
            ),
            Icon(Icons.thumb_up_outlined, size: 16, color: Colors.grey[600]),
            const SizedBox(width: 6),
            Text('$likes', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
            const SizedBox(width: 16),
            Icon(Icons.thumb_down_outlined, size: 16, color: Colors.grey[600]),
          ],
        ),
      ],
    );
  }
}
