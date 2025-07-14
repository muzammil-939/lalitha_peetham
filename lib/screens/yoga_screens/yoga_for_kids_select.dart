import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class YogaForKidsSelect extends StatelessWidget {
  const YogaForKidsSelect({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return YogaLayout(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 50),
            _buildBreadcrumb(),
            SizedBox(height: 50),
            // Hero Section
            Container(
              height: screenHeight * 0.8,
              padding: const EdgeInsets.all(80),
              decoration: BoxDecoration(
                color: const Color(0xFFD4BB26), // Inner mustard
                border: Border.all(width: 40, color: Color(0xFF756F2C)),
              ),
              child: Row(
                children: [
                  // Text Left
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'HOW TO CREATE \nDAILY YOGA \nROUTINE \nFOR YOUR CHILD',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              child: Text(
                                'Book Now',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Images Right
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 100,
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/kid1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 100,
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/kid2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.only(top: 6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage('assets/images/kid3.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            _buildFilters(),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 350,
                vertical: 40,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pregnancy Yoga',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInstructorCard(
                        name: 'SWETHA.S',
                        rating: 4.5,
                        orders: '24541 Orders',
                        price: '₹1,850.00',
                        services: 'Mindful Meditation, Chakra Meditation 🏆',
                        language: 'Telugu',
                        experience: 'Exp: 3 Years',
                        imageAsset: 'assets/swetha.jpg',
                        context: context,
                      ),
                      _buildInstructorCard(
                        name: 'BHANU.K',
                        rating: 4.5,
                        orders: '24541 Orders',
                        price: '₹1,850.00',
                        services: 'Mindful Meditation, Gen Meditation 🏆',
                        language: 'Telugu',
                        experience: 'Exp: 3 Years',
                        imageAsset: 'assets/bhanu.jpg',
                        context: context,
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInstructorCard(
                        name: 'VANITHA.L',
                        rating: 4.5,
                        orders: '24541 Orders',
                        price: '₹1,850.00',
                        services: 'Mantra Meditation, Chakra Meditation 🏆',
                        language: 'Tamil',
                        experience: 'Exp: 3 Years',
                        imageAsset: 'assets/vanitha.jpg',
                        context: context,
                      ),
                      _buildInstructorCard(
                        name: 'SRI PRIYA.L',
                        rating: 4.5,
                        orders: '24541 Orders',
                        price: '₹1,850.00',
                        services: 'Kundalini Meditation, Chakra Meditation 🏆',
                        language: 'Tamil',
                        experience: 'Exp: 3 Years',
                        imageAsset: 'assets/sri_priya.jpg',
                        context: context,
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInstructorCard(
                        name: 'VANITHA.L',
                        rating: 4.5,
                        orders: '24541 Orders',
                        price: '₹1,850.00',
                        services: 'Mantra Meditation, Chakra Meditation 🏆',
                        language: 'Tamil',
                        experience: 'Exp: 3 Years',
                        imageAsset: 'assets/vanitha.jpg',
                        context: context,
                      ),
                      _buildInstructorCard(
                        name: 'SRI PRIYA.L',
                        rating: 4.5,
                        orders: '24541 Orders',
                        price: '₹1,850.00',
                        services: 'Kundalini Meditation, Chakra Meditation 🏆',
                        language: 'Tamil',
                        experience: 'Exp: 3 Years',
                        imageAsset: 'assets/sri_priya.jpg',
                        context: context,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilters() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 50.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Filter Button
          Container(
            height: 48,
            width: 140,
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37), // Golden yellow color
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.tune, color: Colors.black, size: 20),
                SizedBox(width: 8),
                Text(
                  'Filter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 20),
              ],
            ),
          ),

          // Sort By Button
          Container(
            height: 48,
            width: 140,
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37), // Golden yellow color
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sort, color: Colors.black, size: 20),
                SizedBox(width: 8),
                Text(
                  'Sort By',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 20),
              ],
            ),
          ),

          // All Toggle Button
          Container(
            height: 48,
            width: 80,
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37), // Golden yellow color
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  width: 32,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E7D32), // Green toggle background
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 16,
                      height: 16,
                      margin: EdgeInsets.only(right: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstructorCard({
    required BuildContext context,
    required String name,
    required double rating,
    required String orders,
    required String price,
    required String services,
    required String language,
    required String experience,
    required String imageAsset,
  }) {
    return Container(
      height: 480,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xffB88E2F), width: 2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4AF37),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            Column(
              children: [
                // Profile section with icon
                const SizedBox(height: 8),

                // Profile Image
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFD4AF37),
                      width: 3,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      color: Colors.grey[300],
                      child: const Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Rating Stars
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Icon(
                      index < 4 ? Icons.star : Icons.star_border,
                      color: const Color(0xFFD4AF37),
                      size: 16,
                    );
                  }),
                ),
                const SizedBox(height: 4),

                // Orders
                Text(
                  orders,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),

                // Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '₹2,199.00',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '$price/month',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFFD4AF37),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),

                // Services
                Text(
                  services,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),

                // Language
                Text(
                  language,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 2),

                // Experience
                Text(
                  experience,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 12),
              ],
            ),

            // Visit Button
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFD4AF37), Color(0xFFB8941F)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.go('/yoga_for_kids_order');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'VISIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
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
              ' // Yoga For Kids',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
