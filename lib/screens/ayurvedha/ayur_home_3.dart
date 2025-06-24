import 'package:flutter/material.dart';

class AyurHome3 extends StatelessWidget {
  const AyurHome3({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 200.0, vertical: 100),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'RECOMMENDED DOCTORS',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 20),

              // Description Text
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                child: Text(
                  'People pay lots of money to doctors and still not get the best cure for their diseases. But at Ayurveda Consultants, you will get the free ayurvedic consultation online via video or phone. Here, you will get consultation free of cost for any disease. Keeping in mind the side effects of Allopathy, we strongly believe that for many diseases Ayurvedic Treatment is better.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    height: 1.6,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              SizedBox(height: 40),

              // Doctors Section with Navigation
              Stack(
                children: [
                  // Doctor Cards Container
                  SizedBox(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildDoctorCard(
                          'assets/images/doctor1.png', // Replace with actual asset path
                          'DR. PEDIATRICIAN',
                          'Specialist Cardiologist',
                          2.4,
                          2475,
                        ),
                        _buildDoctorCard(
                          'assets/images/doctor2.png', // Replace with actual asset path
                          'DR. PEDIATRICIAN',
                          'Specialist Cardiologist',
                          2.4,
                          2475,
                        ),
                        _buildDoctorCard(
                          'assets/images/doctor3.png', // Replace with actual asset path
                          'DR. PEDIATRICIAN',
                          'Specialist Cardiologist',
                          2.4,
                          2475,
                        ),
                        _buildDoctorCard(
                          'assets/images/doctor4.png', // Replace with actual asset path
                          'DR. PEDIATRICIAN',
                          'Specialist Cardiologist',
                          2.4,
                          2475,
                        ),
                      ],
                    ),
                  ),

                  // Left Navigation Arrow
                  Positioned(
                    left: -10,
                    top: 120,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.grey[600],
                        size: 24,
                      ),
                    ),
                  ),

                  // Right Navigation Arrow
                  Positioned(
                    right: -10,
                    top: 120,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.grey[600],
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 200.0,
            vertical: 20.0,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Recent Articles Section
              _buildRecentArticlesSection(),

              const SizedBox(height: 80),
              // Success Stories Section
              _buildSuccessStoriesSection(screenWidth),

              const SizedBox(height: 40),

              // Recent Cases Section
              _buildRecentCasesSection(screenWidth),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDoctorCard(
    String imagePath,
    String name,
    String specialization,
    double rating,
    int views,
  ) {
    return Row(
      children: [
        SizedBox(width: 40),
        Container(
          width: 200,
          margin: EdgeInsets.only(right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Doctor Image
              SizedBox(
                width: 200,
                height: 160,

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 12),

              // Doctor Name
              Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(height: 4),

              // Specialization
              Text(
                specialization,
                style: TextStyle(fontSize: 13, color: Colors.grey[700]),
              ),
              SizedBox(height: 8),

              // Rating and Views
              Row(
                children: [
                  // Stars
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        size: 14,
                        color:
                            index < rating.floor()
                                ? Colors.orange
                                : Colors.grey[300],
                      );
                    }),
                  ),
                  SizedBox(width: 8),

                  // Rating Text
                  Text(
                    '$rating ($views views)',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 40),
      ],
    );
  }

  Widget _buildRecentArticlesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "RECENT ARTICLES",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 20),

        // Article 1
        _buildArticleCard(
          "Dr. BABASAHEB RENUSHE",
          "तोंडात खाणे, दात पिणे याचा संबंधगाठ परिणामा होतो का?",
        ),

        // Article 2
        _buildArticleCard("Dr. BABASAHEB RENUSHE", "वात दोष - VATA DOSHA"),

        // Article 3
        _buildArticleCard(
          "Dr. Dinesh Kacha",
          "The Significance of Ayurvedic Medicinal Plants",
        ),

        // Article 4
        _buildArticleCard("Dr. Dinesh Kacha", "Ancient Ayurveda"),

        // Article 5
        _buildArticleCard(
          "Dr. Dinesh Kacha",
          "Cancer Research Anti-Cancer Activity PHPC Compound",
        ),
      ],
    );
  }

  Widget _buildArticleCard(String doctor, String topic) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF0E7BB), // Beige color
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
        border: const Border(
          bottom: BorderSide(
            color: Color(0xFFDAA520), // Golden rod color
            width: 4,
          ),
        ),
      ),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 1.4,
          ),
          children: [
            TextSpan(
              text: doctor,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextSpan(
              text: " on ",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            TextSpan(
              text: topic,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuccessStoriesSection(screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "SUCCESS STORIES",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 20),

        Container(
          width: screenWidth * 0.7,
          height: 400, // Increased height
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFFF0E7BB), // Beige color
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
            border: const Border(
              bottom: BorderSide(
                color: Color(0xFFDAA520), // Golden rod color
                width: 4,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          color: Color(0xFFDAA520),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Ravi S., Bengaluru",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "\"After suffering from chronic migraine for over 6 \nyears and trying various allopathic treatments, \nI turned to Ayurveda as a last hope. Within 3 \nmonths of regular consultations and herbal \nremedies, my condition drastically improved. \nI now live pain-free, thanks to Ayurveda Consultants.\"",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    color: Colors.grey[400],
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),
        _buildNavigationDots(),
      ],
    );
  }

  Widget _buildRecentCasesSection(screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "RECENT CASES",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 20),

        Container(
          width: screenWidth * 0.7,
          height: 400, // Increased height
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFFF0E7BB), // Beige color
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
            border: const Border(
              bottom: BorderSide(
                color: Color(0xFFDAA520), // Golden rod color
                width: 4,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: Colors.grey[400],
                        child: const Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "CASE ID AC-2304",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "NAME : SURESH",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "AGE :35 YRS",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "BENGALURU",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Issue: Chronic Back Pain",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Consultant: Dr. Babasaheb Renushe",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Treatment: Panchakarma,",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Ashwagandha, Yoga therapy",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Status: Ongoing (2nd month of",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "therapy, 60% relief)",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),
        _buildNavigationDots(),
      ],
    );
  }

  Widget _buildNavigationDots() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFFDAA520), // Active dot - golden
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFF666666), // Inactive dot - gray
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFF666666), // Inactive dot - gray
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFF666666), // Inactive dot - gray
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
