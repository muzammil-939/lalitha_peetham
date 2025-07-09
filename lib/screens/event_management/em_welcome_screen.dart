import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmWelcomeScreen extends StatefulWidget {
  const EmWelcomeScreen({super.key});

  @override
  State<EmWelcomeScreen> createState() => _EmWelcomeScreenState();
}

class _EmWelcomeScreenState extends State<EmWelcomeScreen> {
   final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> contractors = [
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em4.png',
      'highlights': '- Candid Photography\n- Album + Video\n- Drone Shots Available',
      'rating': '4.5',
      'reviews': '120+',
      'location': 'Coimbatore',
      'experience': '8yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em5.png',
      'highlights': '- Wedding Decor\n- Stage Setup\n- Lighting Solutions',
      'rating': '4.8',
      'reviews': '98+',
      'location': 'Chennai',
      'experience': '6yrs'
    },
    {
      'name': 'SARAVANAN.K',
      'photo': 'assets/images/em4.png',
      'highlights': '- Catering\n- South Indian Cuisine\n- Live Counters',
      'rating': '4.7',
      'reviews': '140+',
      'location': 'Madurai',
      'experience': '10yrs'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return EmLayout(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _buildBreadcrumb(),
              const SizedBox(height: 40),
              _buildHeroSection(),
              const SizedBox(height: 60),
              _buildContractorsSection(),
              const SizedBox(height: 60),
              _buildWhyChooseSection(),
              const SizedBox(height: 40),
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
              '/ / EVENT MANAGEMENT',
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

  Widget _buildHeroSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "PLAN YOUR DREAM\nEVENT WITH TRUSTED\nEXPERTS",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Find Top-Rated Contractors For Weddings, Parties, And Corporate Events — All In One Place.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD4BB26),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {
                    context.go('/em_basicdetails');
                  },
                  child: const Text(
                    "BOOK NOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
          flex: 2,
          child: Container(
            height: 300,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Main large circle with yellow border
                Positioned(
                  top: 20,
                  right: 40,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFD4BB26),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/em1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Top right small circle
                Positioned(
                  top: 155,
                  right: 65,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/em2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // Bottom right small circle
                Positioned(
                  bottom: 80,
                  right: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/em3.png'),
                        fit: BoxFit.cover,
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

Widget _buildContractorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "ELITE CONTRACTORS",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 24),
        // Container with external arrows
        Row(
          children: [
            // Left Arrow
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios, size: 16),
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.offset - 276, // card width + separator
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            // Scrollable Cards Container
            Expanded(
              child: SizedBox(
                height: 450,
                child: ListView.separated(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: contractors.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    final contractor = contractors[index];
                    return _buildContractorCard(contractor);
                  },
                ),
              ),
            ),
            const SizedBox(width: 16),
            // Right Arrow
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios, size: 16),
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.offset + 276, // card width + separator
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }


  Widget _buildContractorCard(Map<String, String> contractor) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD4BB26), width: 2),
        borderRadius: BorderRadius.circular(0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Image - Square shape
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(color: const Color(0xFFD4BB26), width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Container(
                color: Colors.grey[300],
                child: contractor['photo'] != null
                    ? Image.asset(
                        contractor['photo']!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.grey[600],
                        ),
                      )
                    : Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.grey[600],
                      ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          // Name
          Text(
            contractor['name']!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          
          // Service Highlights Label
          const Text(
            "Service Highlights:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFD4BB26),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          
          // Highlights
          Text(
            contractor['highlights']!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.4,
              fontSize: 13,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          
          // Rating and Info
          Text(
            "Rating ${contractor['rating']}/5\nReviews: ${contractor['reviews']}\nLocation: ${contractor['location']}\nExp: ${contractor['experience']}",
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.4,
              fontSize: 13,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          
          // Enquire Button
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD4BB26),
                padding: const EdgeInsets.symmetric(vertical: 14),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              onPressed: () {
                
               
              },
              child: const Text(
                "ENQUIRE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWhyChooseSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "WHY TO CHOOSE EVENT\nCREATORS?",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.2,
          ),
       textAlign: TextAlign.center, ),
        const SizedBox(height: 24),
        const Text(
          "With Over 11 Years Of Experience In The Event Planning Industry, We Specialize In Creating Large-Scale Marriage Events That Are Nothing Short Of Spectacular. Our Extensive Experience Has Equipped Us With The Expertise And Insight Needed To Handle Every Aspect Of Event Planning With Precision.",
          style: TextStyle(
            fontSize: 15,
            height: 1.7,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "We Pride Ourselves On A Flawless Track Record—All The Events We Create Are Fully Successful, Leaving Our Clients And Their Guests With Unforgettable Memories. When You Choose Us, You're Choosing A Team Dedicated To Excellence, Ensuring Your Special Day Is Everything You've Dreamed Of And More.",
          style: TextStyle(
            fontSize: 15,
            height: 1.7,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}