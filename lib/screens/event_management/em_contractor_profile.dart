import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmContractorProfile extends StatefulWidget {
  const EmContractorProfile({super.key});

  @override
  State<EmContractorProfile> createState() => _EmContractorProfileState();
}

class _EmContractorProfileState extends State<EmContractorProfile> {
  int? selectedCardIndex;

  final List<Map<String, String>> contractors = [
    {
      'name': 'SRIVANI.K',
      'photo': 'assets/images/em6.jpg',
      'highlights': 'Candid Photography'
        'Album + Video'
        'Drone Shots Available',
      'rating': '4.5',
      'reviews': '120+',
      'location': 'Coimbatore',
      'experience': '8yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em5.png',
      'highlights': 'Stage Flower Decoration'
        'Wedding Garland Sets'
        'Fresh & Artificial Options',
      'rating': '4.6',
      'reviews': '115+',
      'location': 'Madurai',
      'experience': '7yrs',
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em4.png',
      'highlights': 'Stage Setup'
        'Lighting and Sound'
        'Special Effects',
      'rating': '4.7',
      'reviews': '110+',
      'location': 'Chennai',
      'experience': '6yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em4.png',
      'highlights': 'Flower Decoration'
        'Theme Design'
        'Garland Making',
      'rating': '4.4',
      'reviews': '100+',
      'location': 'Salem',
      'experience': '9yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em5.png',
      'highlights': 'Hall Decoration'
        'Traditional Decor'
       'Custom Themes',
      'rating': '4.3',
      'reviews': '90+',
      'location': 'Trichy',
      'experience': '10yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em6.png',
      'highlights': 'Stage Setup'
        'LED Panels'
        'Live Streaming Support',
      'rating': '4.2',
      'reviews': '85+',
      'location': 'Erode',
      'experience': '5yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em4.png',
      'highlights': 'Catering Service'
        'Buffet Arrangement'
        'Traditional Foods',
      'rating': '4.8',
      'reviews': '135+',
      'location': 'Thanjavur',
      'experience': '12yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em5.png',
      'highlights': 'Photography'
        'Drone Coverage'
        'Album Printing',
      'rating': '4.9',
      'reviews': '150+',
      'location': 'Kumbakonam',
      'experience': '11yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em6.png',
      'highlights': 'Makeup Artist'
        'Bridal Styling'
        'Groom Touch-up',
      'rating': '4.5',
      'reviews': '125+',
      'location': 'Tirunelveli',
      'experience': '8yrs'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return EmLayout(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _buildBreadcrumb(),
              const SizedBox(height: 40),
              Wrap(
                spacing: 20,
                runSpacing: 30,
                children: List.generate(contractors.length, (index) {
                  return _buildContractorCard(index);
                }),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            SizedBox(width: 8),
            Text(
              '// EVENT MANAGEMENT  //  CONTRACTOR PROFILES',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContractorCard(int index) {
    final contractor = contractors[index];
    final isSelected = selectedCardIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          selectedCardIndex = index;
        });
      },
      child: Container(
        width: 260,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFFF9E3) : Colors.white,
          borderRadius: BorderRadius.circular(0),
          border: Border.all(
            color: isSelected ? const Color(0xFFD4BB26) : Colors.grey.shade300,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert, size: 18),
                itemBuilder: (context) => [
                  const PopupMenuItem(value: 'report', child: Text('Report')),
                  const PopupMenuItem(value: 'review', child: Text('Give Review')),
                  const PopupMenuItem(value: 'chat', child: Text('Chat For Service')),
                  const PopupMenuItem(value: 'share', child: Text('Share')),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFD4BB26), width: 2),
              ),
              child: ClipOval(
                child: Image.asset(
                  contractor['photo']!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              contractor['name']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Category: Wedding Service Set',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Text(
              contractor['highlights']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 1.4,
                fontSize: 12.5,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Rating ${contractor['rating']}/5\nReviews: ${contractor['reviews']}\nLocation: ${contractor['location']}\nExp: ${contractor['experience']}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 1.4,
                fontSize: 12.5,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 40,
              width: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4BB26),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  // Navigate or perform action
                  context.go('/em_service_details');
                },
                child: const Text(
                  'VISIT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
