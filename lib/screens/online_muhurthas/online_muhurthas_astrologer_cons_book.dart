import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class OnlineMuhurthasAstrologerConsBook extends StatelessWidget {
  const OnlineMuhurthasAstrologerConsBook({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    final horizontalPadding = isMobile
        ? 16.0
        : isTablet
            ? 60.0
            : 200.0;

    final verticalPadding = isMobile ? 24.0 : 60.0;

    final contentWidth = isMobile
        ? double.infinity
        : isTablet
            ? 700.0
            : 1000.0;

    return OnlineMuhurthasLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Responsive profile header
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: contentWidth),
              child: isMobile
                  ? _buildColumnProfileHeader(context)
                  : _buildRowProfileHeader(context),
            ),
            const SizedBox(height: 32),
            _buildReviews(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRowProfileHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildProfileImage(),
        const SizedBox(width: 20),
        // Info
        Expanded(child: _buildProfileTexts()),
        const SizedBox(width: 16),
        // Book Button
        SizedBox(
          width: 400,
          height: 50,
          child: _buildBookButton(context),
        ),
      ],
    );
  }

  Widget _buildColumnProfileHeader(BuildContext context) {
    return Column(
      children: [
        _buildProfileImage(),
        const SizedBox(height: 12),
        _buildProfileTexts(),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: _buildBookButton(context),
        ),
      ],
    );
  }

  Widget _buildProfileImage() {
    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/em6.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileTexts() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Astrologer Meera Sharma',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2D3748),
            height: 1.2,
          ),
        ),
        SizedBox(height: 4),
        Text(
          '15 years of experience',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF718096),
            height: 1.3,
          ),
        ),
        SizedBox(height: 2),
        Text(
          'Speaks Hindi, English',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF718096),
            height: 1.3,
          ),
        ),
      ],
    );
  }

  Widget _buildBookButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.go('/online_muhurthas_astrologer_cons_book'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFD4BB26),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: const Text(
        'Book Appointment',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildReviews(BuildContext context) {
    double rightPadding = ResponsiveHelper.isMobile(context)
        ? 16
        : ResponsiveHelper.isTablet(context)
            ? 60
            : 200;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(right: rightPadding, top: 75, bottom: 100),
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
          // Overall Rating
          Row(
            children: List.generate(
              5,
              (index) => const Icon(Icons.star, color: Colors.amber, size: 16),
            ),
          ),
          const SizedBox(height: 32),
          _buildReviewItem(
            "These 45 minutes changed my life – I feel calmer and more in control every day.",
            "July 2, 2020 03:29 PM",
            "DARRELL STEWART",
            "assets/images/profile1.jpg",
            128,
          ),
          const SizedBox(height: 24),
          _buildReviewItem(
            "Stress used to rule my day. Now, I handle things with peace and clarity.",
            "July 2, 2020 1:04 PM",
            "DARLENE ROBERTSON",
            "assets/images/profile2.jpg",
            82,
          ),
          const SizedBox(height: 24),
          _buildReviewItem(
            "I've tried many apps, but nothing matched the live, personal experience here.",
            "June 26, 2020 10:03 PM",
            "KATHRYN MURPHY",
            "assets/images/profile3.jpg",
            9,
          ),
          const SizedBox(height: 24),
          _buildReviewItem(
            "Consistent, soothing, and effective – I'm a different person now.",
            "July 7, 2020 10:14 AM",
            "RONALD RICHARDS",
            "assets/images/profile4.jpg",
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
        Row(
          children: List.generate(
            5,
            (index) => const Icon(Icons.star, color: Colors.amber, size: 14),
          ),
        ),
        const SizedBox(height: 12),
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
        Text(
          date,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage(profileImage),
            ),
            const SizedBox(width: 12),
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.thumb_up_outlined, size: 16, color: Colors.grey[600]),
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
                Icon(Icons.thumb_down_outlined, size: 16, color: Colors.grey[600]),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
