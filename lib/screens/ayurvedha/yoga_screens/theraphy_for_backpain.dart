import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class TheraphyForBackpain extends StatefulWidget {
  const TheraphyForBackpain({super.key});

  @override
  State<TheraphyForBackpain> createState() => _TheraphyForBackpainState();
}

class _TheraphyForBackpainState extends State<TheraphyForBackpain> {
  final List<Map<String, dynamic>> therapists = [
    {
      'name': 'SWETHA.S',
      'image': 'assets/images/swetha.jpg', // Replace with actual image path
      'rating': 5.0,
      'orders': '24504 Orders',
      'specialization': 'Back Pain Specialist',
      'location': 'Mysore',
      'experience': 'Exp: 9 Years',
      'languages': ['English', 'Hindi', 'Kannada'],
    },
    {
      'name': 'BHANU.K',
      'image': 'assets/images/bhanu.jpg', // Replace with actual image path
      'rating': 5.0,
      'orders': '24504 Orders',
      'specialization': 'Back Pain Specialist',
      'location': 'Mysore',
      'experience': 'Exp: 9 Years',
      'languages': ['English', 'Hindi', 'Kannada'],
    },
    {
      'name': 'VANITHA.L',
      'image': 'assets/images/vanitha.jpg', // Replace with actual image path
      'rating': 5.0,
      'orders': '24504 Orders',
      'specialization': 'Back Pain Specialist',
      'location': 'Tamil',
      'experience': 'Exp: 4 Years',
      'languages': ['Tamil'],
    },
    {
      'name': 'SRI PRIYA.L',
      'image': 'assets/images/sri_priya.jpg', // Replace with actual image path
      'rating': 5.0,
      'orders': '24504 Orders',
      'specialization': 'Back Pain Specialist',
      'location': 'Tamil',
      'experience': 'Exp: 4 Years',
      'languages': ['Tamil'],
    },
    {
      'name': 'SHREEHARI',
      'image': 'assets/images/shreehari1.jpg', // Replace with actual image path
      'rating': 5.0,
      'orders': '24504 Orders',
      'specialization': 'Mindful Meditation, Chakra Meditation',
      'location': 'Tamil',
      'experience': 'Exp: 4 Years',
      'languages': ['Tamil'],
    },
    {
      'name': 'SHREEHARI',
      'image': 'assets/images/shreehari2.jpg', // Replace with actual image path
      'rating': 5.0,
      'orders': '24504 Orders',
      'specialization': 'Mindful Meditation, Chakra Meditation',
      'location': 'Tamil',
      'experience': 'Exp: 4 Years',
      'languages': ['Tamil'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(200, 50, 200, 100),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Breadcrumb
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.home, size: 16, color: Colors.black),
                      Text(' / ', style: TextStyle(color: Colors.black, fontSize: 14)),
                      Text('YOGA THERAPHY', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                      Text(' // ', style: TextStyle(color: Colors.black, fontSize: 14)),
                      Text('YOGA THERAPHY FOR BACK PAIN', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              // Therapist Cards Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: 1.1,
                ),
                itemCount: therapists.length,
                itemBuilder: (context, index) {
                  return _buildTherapistCard(therapists[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTherapistCard(Map<String, dynamic> therapist) {
    return Stack(
      children: [
        // Yellow bottom container
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: 60,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFD4BB26),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        // Main white card
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFD4BB26), width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Image with Rating Badge
                Stack(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFFD4BB26), width: 3),
                        color: Colors.grey.shade300,
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      top: -2,
                      right: -2,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Color(0xFFD4BB26),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.verified,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                
                // Rating Stars
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => 
                    const Icon(
                      Icons.star,
                      color: Color(0xFFD4BB26),
                      size: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                
                // Orders Count
                Text(
                  therapist['orders'],
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                
                // Therapist Name
                Text(
                  therapist['name'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                
                // Languages
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 4,
                  children: therapist['languages'].map<Widget>((lang) => 
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        lang,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ).toList(),
                ),
                const SizedBox(height: 8),
                
                // Specialization
                Text(
                  therapist['specialization'],
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                
                // Location
                Text(
                  therapist['location'],
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 2),
                
                // Experience
                Text(
                  therapist['experience'],
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 12),
                
                // Visit Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle visit button tap
                      print('Visiting ${therapist['name']}');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4BB26),
                      foregroundColor: Colors.black,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'VISIT',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}