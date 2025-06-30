import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

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
    return  YogaLayout(
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

        _buildGuruProfileSection(),

        SuccessStoriesSection(),

        _buildyogaSection(),

        _buildintrestedSection(),

        _buildContactSection(),
        
      ],
      )
    );

  }

 Widget _buildHeroSection() {
  return Container(
    height: 800,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/yoga_image1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _searchBox(_localityController, 'Search by Locality or City', Icons.search),
            _searchBox(_specialtyController, 'Search Speciality', Icons.search),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE7C90F),
                shape: const RoundedRectangleBorder(),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
              ),
              child: const Text('Search', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _searchBox(TextEditingController controller, String hint, IconData icon) {
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
        ],
      ),
    );
  }
Widget _buildYogaCardsGrid() {
  final yogaCardImages = [
    'assets/images/yoga_image2.png',
    'assets/images/yoga_image2.png',
    'assets/images/yoga_image2.png',
    'assets/images/yoga_image2.png',
    'assets/images/yoga_image2.png',
    'assets/images/yoga_image2.png',
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildOnlineClassCard(
                'Online Yoga Classes',
                'Patanjale Shyambhai Inst\nOf Yoga & Therapy Offers',
                'Live Classes Conducted By\nYoga Guru Shyamsunder Biyani.',
                '',
                'assets/images/yoga_image3.jpg',
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: _buildOnlineClassCard(
                'Yoga Therapy',
                'One-On-One Yoga Therapy Offered\nTo Cure Disorders Such As Diabetes,\nBack Pain, Knee Pain, Obesity,\nHernia, Sleep Apnea, Sinus,\nMigraine, Heart Disorders And\nMore.',
                '',
                '',
                'assets/images/yoga_image3.jpg',
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: _buildOnlineClassCard(
                'Regular Yoga Classes',
                'Patanjale Shyambhai Inst Of Yoga &\nTherapy Offers Live Online Classes For\nThe Members Anywhere In The World At\nTheir Convenient Time.',
                'Live Classes Conducted By\nYoga Guru Shyamsunder Biyani.',
                '',
                'assets/images/yoga_image3.jpg',
              ),
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
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Image.asset(
          imagePath,
          height: 80,
          width: 250,
        ),
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
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: const Text(
          'View More',
          style: TextStyle(fontWeight: FontWeight.bold),
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
              _buildBulletPoint('More Than 20 Years Of Experience In Yoga And Therapy'),
              _buildBulletPoint('Specialized In Yoga And Yoga Therapy Under Various Traditions'),
              _buildBulletPoint('Published Multiple Journal Publications'),
              _buildBulletPoint('Successfully Integrated Traditional Yoga Practices Into Modern Therapeutic Techniques For Effective Results'),
              const SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE7C90F),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
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
      height: 800,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/yoga_image4.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hero Text
            Text(
              'INTERESTED IN\nYOGA?',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
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
            )
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
              color: Colors.black87,
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
              const SizedBox(width: 50),
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
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          'SUBMIT',
                          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
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

  Widget _buildTextField(String hint, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE7C90F)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      ),
    );
  }


  @override
  void dispose() {
    _localityController.dispose();
    _specialtyController.dispose();
    super.dispose();
  }
}




class SuccessStoriesSection extends StatelessWidget {
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

   SuccessStoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          const SizedBox(height: 40),
          const Text(
            'OUR SUCCESS STORIES...',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),

          // Tab Bar Section
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TabBar(
              isScrollable: true,
              indicatorColor: const Color(0xFFE7C90F),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              tabs: tabs.map((label) => Tab(text: label)).toList(),
            ),
          ),

          const SizedBox(height: 30),

          // Background image with blur overlay testimonial
          Stack(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/yoga_image.jpg'), // Replace with your background
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                      backgroundBlendMode: BlendMode.overlay,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              '"',
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'MEDHA',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Blessed With A Baby Boy Through Normal Delivery\nThank You So Much @Yoga Teacher Deepa Mam For Prenatal Yoga And Your Advice Has Helped Alot',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE7C90F),
                                foregroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'View More',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
