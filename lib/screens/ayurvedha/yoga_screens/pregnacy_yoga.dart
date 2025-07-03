import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class PregnacyYoga extends StatefulWidget {
  const PregnacyYoga({super.key});

  @override
  PregnacyYogaState createState() => PregnacyYogaState();
}

class PregnacyYogaState extends State<PregnacyYoga> {
  final List<Map<String, String>> instructors = [
    {
      'name': 'VANITHA.L',
      'price': '₹1,850.00',
      'duration': '/month',
      'experience': 'Exp: 4 Years',
      'image': 'assets/images/instructor_1.jpg'
    },
    {
      'name': 'SRI PRIYA.L',
      'price': '₹1,850.00',
      'duration': '/month',
      'experience': 'Exp: 5 Years',
      'image': 'assets/images/instructor_2.jpg'
    },
    {
      'name': 'SHREEHARI',
      'price': '₹1,850.00',
      'duration': '/month',
      'experience': 'Exp: 9 Years',
      'image': 'assets/images/instructor_3.jpg'
    },
    {
      'name': 'SHREEHARI',
      'price': '₹1,850.00',
      'duration': '/month',
      'experience': 'Exp: 9 Years',
      'image': 'assets/images/instructor_4.jpg'
    },
    {
      'name': 'SHREEHARI',
      'price': '₹1,850.00',
      'duration': '/month',
      'experience': 'Exp: 9 Years',
      'image': 'assets/images/instructor_5.jpg'
    },
    {
      'name': 'SHREEHARI',
      'price': '₹1,850.00',
      'duration': '/month',
      'experience': 'Exp: 9 Years',
      'image': 'assets/images/instructor_6.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Container(
        color: const Color(0xFFF5EFC2), // Light yellow background
        child: Column(
          children: [
            // Breadcrumb
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.home, size: 16, color: Colors.black),
                        SizedBox(width: 6),
                        Text(' // ',
                            style: TextStyle(color: Colors.black, fontSize: 14)),
                        SizedBox(width: 6),
                        Text('PREGNANCY YOGA',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Hero Section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF756F2C), // Outer olive
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFD4BB26), // Inner mustard
                  borderRadius: BorderRadius.circular(8),
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
                            'PREGNANCY YOGA\nMADE EASY, SAFE,\nAND SOOTHING —\nFOR YOU AND\nYOUR LITTLE ONE',
                            style: TextStyle(
                              fontSize: 32,
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
                                    horizontal: 24, vertical: 12),
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
                                      image: AssetImage('assets/images/pregnancy_image1.jpg'),
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
                                      image: AssetImage('assets/images/pregnancy_image2.jpg'),
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
                                image: AssetImage('assets/images/pregnancy_image3.jpg'),
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
            ),

            // Title
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'PREGNANCY YOGA',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // Instructor Grid
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: instructors.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.55, // Made even smaller for much taller cards
                ),
                itemBuilder: (context, index) => _buildInstructorCard(instructors[index]),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructorCard(Map<String, String> data) {
    return Container(
      height: 350, // Fixed height to ensure all content fits
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Top Heart Icon
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF5EFC2),
                radius: 14,
                child: const Icon(Icons.favorite_border, size: 14, color: Colors.grey),
              ),
            ),
          ),

          // Profile Image
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFD4BB26), width: 3),
              image: DecorationImage(
                image: AssetImage(data['image']!),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Star rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (i) {
              return const Icon(Icons.star, size: 16, color: Color(0xFFD4BB26));
            }),
          ),

          const SizedBox(height: 4),

          const Text("24541 Orders", 
              style: TextStyle(fontSize: 11, color: Colors.grey)),
          
          const SizedBox(height: 8),

          // Name
          Text(data['name']!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 15,
                  color: Colors.black)),

          const SizedBox(height: 4),

          // Price & Duration
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data['price']!,
                  style: const TextStyle(
                      color: Color(0xFFD4BB26),
                      fontWeight: FontWeight.w600,
                      fontSize: 13)),
              Text(' ${data['duration']}',
                  style: const TextStyle(color: Colors.grey, fontSize: 11)),
            ],
          ),

          const SizedBox(height: 6),

          // Info
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Prenatal Yoga Specialist ",
                  style: TextStyle(fontSize: 11, color: Colors.grey)),
              Icon(Icons.verified, size: 12, color: Color(0xFFD4BB26)),
            ],
          ),
          
          const SizedBox(height: 2),
          
          const Text("Tamil", style: TextStyle(fontSize: 11, color: Colors.grey)),
          
          const SizedBox(height: 2),
          
          Text(data['experience']!, 
              style: const TextStyle(fontSize: 11, color: Colors.grey)),

          const Spacer(),

          // Visit Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              height: 36,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB8A532),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text(
                  'VISIT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // Yellow Bottom Border
          Container(
            height: 5,
            decoration: const BoxDecoration(
              color: Color(0xFFD4BB26),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}