import 'package:flutter/material.dart';

class AyurHome2 extends StatelessWidget {
  const AyurHome2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          decoration: const BoxDecoration(
            color: Color(0xFFD4BB26), // Dark gray background
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatItem(
                icon: Icons.assignment_turned_in_outlined,
                count: "586+",
                label: "Articles",
              ),
              _buildStatItem(
                icon: Icons.person_outline,
                count: "458+",
                label: "Doctors Registered",
              ),
              _buildStatItem(
                icon: Icons.person_add_alt_outlined,
                count: "158+",
                label: "Patents Healed",
              ),
              _buildStatItem(
                icon: Icons.workspace_premium_outlined,
                count: "96+",
                label: "Case Discussions",
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 200, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 150),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CASE CATEGORIES',
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 1.2,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: 40),
                    _buildCategoriesRow(),
                    SizedBox(height: 40),
                    _buildNavigationDots(),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFFC1B11F),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          'View All Cases',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Header Section
              _buildHeaderSection(screenWidth),
              SizedBox(height: 60),

              // Services Row
              _buildServicesRow(),
              SizedBox(height: 100),

              // Free Ayurvedic Consultation Section
              _buildConsultationSection(screenWidth),
              SizedBox(height: 100),

              // Why Ayurvedic Consultation Section
              _buildWhySection(screenWidth),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderSection(screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'FREE ONLINE AYURVEDIC\nCONSULTATION',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.2,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        SizedBox(
          width: screenWidth * 0.7,
          child: Text(
            'Nowadays, Ayurvedic Treatment is the most effective, safe, and popular way of treating diseases. Ayurvedic Treatment is a much safer and effective treatment as compared to Allopathy Treatment. As most of us know that in allopathy treatment, doctors and other healthcare professionals (such as nurses, surgeons) treat diseases and their symptoms using drugs, medicines or surgery. From Ayurveda Consultants, you can get the free online ayurvedic consultation anywhere in the world.',
            style: TextStyle(fontSize: 24, color: Colors.black87, height: 1.5),
          ),
        ),
      ],
    );
  }

  Widget _buildServicesRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Row(
        children: [
          Expanded(
            child: _buildServiceCard(
              'assets/images/doctor1.png', // You'll need to add these images
              'Consult Patients',
              'REGISTER AS A DOCTOR',
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: _buildServiceCard(
              'assets/images/doctor2.png',
              'Discuss With Doctors',
              'POST CASE DISCUSSION',
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: _buildServiceCard(
              'assets/images/doctor3.png',
              'Share Your Research',
              'POST ARTICLE',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(String imagePath, String title, String buttonText) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300], // Placeholder for image
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 36,
          width: 160,
          decoration: BoxDecoration(
            color: Color(0xFFC1B11F),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildConsultationSection(screenWidth) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: screenWidth * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FREE AYURVEDIC\nCONSULTATION',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.2,
                  letterSpacing: 1.25,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'People pay lots of money to doctors and still not get the best care for their diseases. But at Ayurveda Consultants, you will get the free ayurvedic consultation online via video or phone. Here, you will get consultation free of cost for any disease. Keeping in mind the side effects of Allopathy, we strongly believe that for many diseases Ayurvedic Treatment is better.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: 300,
          height: 300,

          decoration: BoxDecoration(shape: BoxShape.circle),
          child: ClipRRect(child: Image.asset('assets/images/ayur_1.png')),
        ),
      ],
    );
  }

  Widget _buildWhySection(screenWidth) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: screenWidth * 0.4,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WHY AYURVEDIC\nCONSULTATION',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.2,
                  letterSpacing: 1.25,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'People pay lots of money to doctors and still not get the best care for their diseases. But at Ayurveda Consultants, you will get the free ayurvedic consultation online via video or phone. Here, you will get consultation free of cost for any disease. Keeping in mind the side effects of Allopathy, we strongly believe that for many diseases Ayurvedic Treatment is better.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: 300,
          height: 300,

          decoration: BoxDecoration(shape: BoxShape.circle),
          child: ClipRRect(child: Image.asset('assets/images/ayur_2.png')),
        ),
      ],
    );
  }

  Widget _buildCategoriesRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Row(
        children: [
          Expanded(
            child: _buildCategoriesCard(
              'assets/images/nephrology.png', // You'll need to add these images
              'Consult Patients',
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: _buildCategoriesCard(
              'assets/images/neurology.png',
              'Discuss With Doctors',
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: _buildCategoriesCard(
              'assets/images/panchakarma.png',
              'Share Your Research',
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: _buildCategoriesCard(
              'assets/images/respiratory.png',
              'Share Your Research',
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: _buildCategoriesCard(
              'assets/images/urology.png',
              'Share Your Research',
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: _buildCategoriesCard(
              'assets/images/yoga.png',
              'Share Your Research',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesCard(String imagePath, String title) {
    return Column(
      children: [
        Image.asset(imagePath, fit: BoxFit.cover),
        SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
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

  Widget _buildStatItem({
    required IconData icon,
    required String count,
    required String label,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 48, color: Colors.white),
        const SizedBox(height: 16),
        Text(
          count,
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            height: 1.0,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            height: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
