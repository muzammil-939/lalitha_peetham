import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class WelcomeYogaScreen extends StatefulWidget {
  const WelcomeYogaScreen({super.key});

  @override
  State<WelcomeYogaScreen> createState() => _WelcomeYogaScreenState();
}

class _WelcomeYogaScreenState extends State<WelcomeYogaScreen> {
  final TextEditingController _localityController = TextEditingController();
  final TextEditingController _specialtyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Column(
        children: [
          // Hero Section with Search
          _buildHeroSection(),

          // Welcome Section
          _buildWelcomeSection(),

          // Yoga Cards Grid
          _buildYogaCardsGrid(),

          // Online Classes Section
          _buildOnlineClassesSection(),

          _buildyogaSection(),

          _buildGuruProfileSection(),

          SuccessStoriesSection(),

          _buildintrestedSection(),

          _buildContactSection(),
        ],
      ),
    );
  }

  Widget _buildHeroSection() {
    final size = MediaQuery.of(context).size;
    final isTablet = size.width >= 768 && size.width < 1200;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: 800,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/yoga_image1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: screenWidth * 0.34,
          child: Row(
            children: [
              // Location search field
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(color: Color(0xCCD4BB26)),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white, size: 18),
                      Text(
                        'SEARCH BY LOCALITY OR CITY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isTablet ? 6 : 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Specialty search field
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    color: Color(0xFFABB547), // Dark gray
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white, size: 18),
                      SizedBox(width: 12),
                      Text(
                        'SEARCH SPECIALITY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isTablet ? 8 : 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Search button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xFFD4BB26), // Purple color
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: Text(
                  'SEARCH',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchBox(
    TextEditingController controller,
    String hint,
    IconData icon,
  ) {
    return Container(
      width: 200,
      height: 50,
      margin: const EdgeInsets.only(right: 10),
      color: const Color(0xCCD0DC2E),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeSection() {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'WELCOME TO LALITHA\nPEETHAM YOGA!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.2,
              letterSpacing: 1.25,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'SOME OF OUR BEST PICKS!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYogaCardsGrid() {
    final yogaCardImages = [
      'assets/images/yoga_image2.png',
      'assets/images/online_image7.png',
      'assets/images/online_image2.png',
      'assets/images/online_image5.png',
      'assets/images/online_image1.png',
      'assets/images/online_image3.png',
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: yogaCardImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 3,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  yogaCardImages[index],
                  width: 350,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    // handle navigation
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text(
                    'View More',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildOnlineClassesSection() {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.grey[50],
      child: Column(
        children: [
          const Text(
            'MORE ABOUT OUR ONLINE\nCLASSES!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'SOME OF OUR BEST PICKS!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildOnlineClassCard(
                'Online Yoga Classes',
                'Patanjale Shyambhai Inst\nOf Yoga & Therapy Offers',
                'Live Classes Conducted By\nYoga Guru Shyamsunder Biyani.',
                '',
                'assets/images/yoga_image3.jpg',
              ),
              const SizedBox(width: 5),
              _buildOnlineClassCard(
                'Yoga Therapy',
                'One-On-One Yoga Therapy Offered\nTo Cure Disorders Such As Diabetes,\nBack Pain, Knee Pain, Obesity,\nHernia, Sleep Apnea, Sinus,\nMigraine, Heart Disorders And\nMore.',
                '',
                '',
                'assets/images/online_image4.jpg',
              ),
              const SizedBox(width: 5),
              _buildOnlineClassCard(
                'Regular Yoga Classes',
                'Patanjale Shyambhai Inst Of Yoga &\nTherapy Offers Live Online Classes For\nThe Members Anywhere In The World At\nTheir Convenient Time.',
                'Live Classes Conducted By\nYoga Guru Shyamsunder Biyani.',
                '',
                'assets/images/online_image6.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOnlineClassCard(
    String title,
    String description,
    String additionalText1,
    String additionalText2,
    String imagePath, // Pass image path here
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Image.asset(imagePath, height: 80, width: 250),
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
            height: 1.4,
          ),
          textAlign: TextAlign.center,
        ),
        if (additionalText1.isNotEmpty) ...[
          const SizedBox(height: 10),
          Text(
            additionalText1,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
        if (additionalText2.isNotEmpty) ...[
          const SizedBox(height: 10),
          Text(
            additionalText2,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
        const SizedBox(height: 20),
        SizedBox(
          width: 140,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffD4BB26),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: const Text(
              'View More',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGuruProfileSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // LEFT: Image (Meditating figure with leaves)
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Replace with your actual image asset
                Image.asset(
                  'assets/images/yoga_image7.png',
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),

          const SizedBox(width: 50),

          // RIGHT: Text content
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SREE SHYAMSUNDER\nBIYANI - ONE\nOF THE BEST YOGA GURUS',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 30),
                _buildBulletPoint(
                  'More Than 20 Years Of Experience In Yoga And Therapy',
                ),
                _buildBulletPoint(
                  'Specialized In Yoga And Yoga Therapy Under Various Traditions',
                ),
                _buildBulletPoint('Published Multiple Journal Publications'),
                _buildBulletPoint(
                  'Successfully Integrated Traditional Yoga Practices Into Modern Therapeutic Techniques For Effective Results',
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE7C90F),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: const Text(
                      'View More',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.only(top: 8, right: 15),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildyogaSection() {
    return Container(
      height: 800,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/yoga_image5.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.5),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Hero Text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'IT IS ONLY WHEN THE CORRECT POSTURE IS FOLLOWED FOR A LONG TIME, WITHOUT INTERRUPTION AND WITH A QUALITY OF POSITIVE ATTITUDE IN EVERY ASPECT OF LIFE WITH STEADY DEDICATION, THAT THE FULL BENEFIT OF THE YOGA WILL BE ACHIEVED.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    height: 1.5,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildintrestedSection() {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/yoga_image4.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Hero Text
            Text(
              'INTERESTED IN\nYOGA?',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontWeight: FontWeight.bold,
                height: 1.5,
                letterSpacing: 1.2,
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Get Started From The BEST YOGA CENTER In India!',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactSection() {
    return Container(
      padding: const EdgeInsets.all(50),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'Contact Us',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xffD4BB26),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side - Contact Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactItem(
                      Icons.location_on,
                      'ADDRESS',
                      'Patanjale Shyambhai Institute Of Yoga &\nTherapy, Behind Near Hanumanji Temple\nRoad, Rajkot-3, Rajeev Nagar,\nRajkot, India - 360005',
                    ),
                    const SizedBox(height: 25),
                    _buildContactItem(
                      Icons.email,
                      'EMAIL ADDRESS',
                      'shyamyogaguru@gmail.com',
                    ),
                    const SizedBox(height: 25),
                    _buildContactItem(
                      Icons.phone,
                      'PHONE NUMBER',
                      '+91 999 999 9999\n+91 888 888 8888',
                    ),
                    const SizedBox(height: 25),
                    _buildContactItem(
                      Icons.access_time,
                      'BUSINESS HOURS',
                      'Monday-Friday: 5am To 10pm\nSaturday: 6am To 10pm\nSunday: 7am To 9pm\nPrior Appointment',
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              // Right side - Contact Form
              Expanded(
                child: Column(
                  children: [
                    _buildTextField('Name *'),
                    const SizedBox(height: 20),
                    _buildTextField('Email *'),
                    const SizedBox(height: 20),
                    _buildTextField('Phone (WhatsApp) *'),
                    const SizedBox(height: 20),
                    _buildTextField('Subject *'),
                    const SizedBox(height: 20),
                    _buildTextField('Best time you prefer', maxLines: 3),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        child: const Text(
                          'SUBMIT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          const Text(
            'CALL US NOW TO BOOK YOUR SLOT',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            '+91 892 812 6174',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String title, String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFE7C90F),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.black, size: 20),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String labelText, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          maxLines: maxLines,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7C90F)),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _localityController.dispose();
    _specialtyController.dispose();
    super.dispose();
  }
}

class SuccessStoriesSection extends StatefulWidget {
  const SuccessStoriesSection({super.key});

  @override
  State<SuccessStoriesSection> createState() => _SuccessStoriesSectionState();
}

class _SuccessStoriesSectionState extends State<SuccessStoriesSection>
    with TickerProviderStateMixin {
  final List<String> tabs = [
    'PREGNANCY',
    'YOGA THERAPY',
    'ONE TO ONE YOGA',
    'PERSONALISED YOGA',
    'KIDS YOGA',
    'CORPORATE YOGA',
    'SPIRITUAL YOGA',
    'FACE YOGA',
  ];

  final Map<String, Map<String, String>> testimonials = {
    'PREGNANCY': {
      'name': 'MEDHA',
      'quote':
          'Blessed With A Baby Boy Through Normal Delivery\nThank You So Much @Yoga Teacher Deepa Mam For Prenatal Yoga And Your Advice Has Helped A lot',
      'image': 'assets/images/yoga_image6.jpg',
    },
    // Add other testimonials if needed
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          const Text(
            'OUR SUCCESS STORIES...',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 30),

          // Tabs
          Container(
            color: const Color(0xFFD4BB26),
            child: TabBar(
              isScrollable: true,
              indicatorColor: Color(0xFFD4BB26),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              tabs: tabs.map((label) => Tab(text: label)).toList(),
            ),
          ),

          // Tab Views
          SizedBox(
            height: 520,
            child: TabBarView(
              children:
                  tabs.map((tab) {
                    final testimonial = testimonials[tab];
                    if (testimonial != null) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(testimonial['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 520,
                            width: double.infinity,
                            color: Colors.white.withOpacity(0.75),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.format_quote,
                                  size: 50,
                                  color: Colors.grey,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  testimonial['name']!,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Text(
                                    testimonial['quote']!,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      height: 1.6,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFD4BB26),
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 15,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      // If no testimonial yet
                      return Center(
                        child: Text(
                          'Coming soon...',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      );
                    }
                  }).toList(),
            ),
          ),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
