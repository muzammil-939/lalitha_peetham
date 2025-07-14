import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class TestimonialsCertificate extends StatelessWidget {
  const TestimonialsCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return YogaLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildBreadcrumb(),
            SizedBox(
              height: screenHeight * 0.8,
              width: double.infinity,
              child: Image.asset(
                'assets/images/yoga_certificate.png',
                fit: BoxFit.cover,
              ),
            ),
            _buildReviews(),
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
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 16, color: Colors.black),
              Text(
                ' // Register As A Yoga Teacher',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReviews() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(40.0),

      child: Column(
        children: [
          // Top testimonial
          Container(
            width: 600,
            padding: const EdgeInsets.all(32.0),
            margin: const EdgeInsets.only(bottom: 60.0),

            child: Column(
              children: [
                // Stars
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(
                        Icons.star,
                        color: Color(0xFFFFD700),
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                // Name
                const Text(
                  'Madhuvanthi',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 20.0),
                // Review text
                const Text(
                  'This course changed my life! Paula has such capable and loving hands to hold her students through it all, diving as deep as we feel comfortable, learning about a variety of aspects of yoga and also ourselves. It offered an opportunity to connect with other heart led souls & create beautiful friendships, as well as feeling like every day learning in the studio was like a mini retreat of \'me time\'. Highly recommend this course to anyone who\'s heart calls them to deepen their journey with yoga and to themselves!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    height: 1.6,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 16.0),
                // Submission info
                const Text(
                  'Submitted by Jenna Thomas on Sunday, Mar 23, 2025',
                  style: TextStyle(fontSize: 13.0, color: Color(0xFF888888)),
                ),
              ],
            ),
          ),

          // Bottom three testimonials
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left testimonial
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.all(24.0),

                  child: Column(
                    children: [
                      // Stars
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.0),
                            child: Icon(
                              Icons.star,
                              color: Color(0xFFFFD700),
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      // Review text
                      const Text(
                        'These online pregnancy yoga sessions kept me active, eased my worries, and helped me connect deeply with my baby!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.5,
                          color: Color(0xFF666666),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      // Name
                      const Text(
                        'Madhuvanthi',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Middle testimonial
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.all(24.0),

                  child: Column(
                    children: [
                      // Stars
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.0),
                            child: Icon(
                              Icons.star,
                              color: Color(0xFFFFD700),
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      // Review text
                      const Text(
                        'Breathing techniques and gentle yoga stretches prepared my body for labor, making my natural birth experience smooth and empowering!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.5,
                          color: Color(0xFF666666),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      // Name
                      const Text(
                        'Kayalvizhi',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Right testimonial
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.all(24.0),

                  child: Column(
                    children: [
                      // Stars
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.0),
                            child: Icon(
                              Icons.star,
                              color: Color(0xFFFFD700),
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      // Review text
                      const Text(
                        'Pregnancy insomnia was exhausting, but relaxing yoga sessions helped me sleep deeply and wake up refreshed every day!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.5,
                          color: Color(0xFF666666),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      // Name
                      const Text(
                        'Sharmila',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
