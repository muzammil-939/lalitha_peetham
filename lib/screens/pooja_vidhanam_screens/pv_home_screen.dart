import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvHomeScreen extends StatefulWidget {
  const PvHomeScreen({super.key});

  @override
  State<PvHomeScreen> createState() => _PvHomeScreenState();
}

class _PvHomeScreenState extends State<PvHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              _buildHeroSection(),
              _sectionWrapper(child: _buildSectionTitle("About Divine Rituals"), topSpacing: 32),
              _sectionWrapper(
                child: Text(
                  'Divine Rituals is an online platform dedicated to preserving and promoting the authentic knowledge of Pooja Vidhanam. We connect learners with certified gurus who impart traditional wisdom in a structured and accessible manner.',
                  style: _paraStyle(),
                ),
              ),
              _sectionWrapper(child: _buildSectionTitle("Why Pooja Vidhanam Matters")),
              _sectionWrapper(
                child: Text(
                  'Pooja Vidhanam is not just a ritual; it\'s a profound spiritual practice that connects us to the divine. Understanding the correct methods and mantras enhances the efficacy and spiritual benefits of your poojas.',
                  style: _paraStyle(),
                ),
              ),
              _sectionWrapper(child: _buildSectionTitle("Learn from the Best")),
              _sectionWrapper(
                child: Text(
                  'Our gurus are highly qualified and experienced in various aspects of Pooja Vidhanam. They provide personalized guidance and ensure that you learn the correct procedures and mantras.',
                  style: _paraStyle(),
                ),
              ),
              _sectionWrapper(child: _buildSectionTitle("Top Courses")),
              _buildCoursesSection(),
             
              _buildTestimonialsSection(),
              _buildCTASection(),
             
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/pv1.png',
          height: 500,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.4), Colors.black.withOpacity(0.6)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Learn Pooja Vidhanam\nfrom Certified Gurus',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Master the art of Pooja Vidhanam with expert guidance.\nExplore our courses and join a free demo today.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD4BB26),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        ),
                        child: const Text(
                          'Browse Courses',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 16),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        ),
                        child: const Text(
                          'Join Free Demo',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
    );
  }

  Widget _sectionWrapper({required Widget child, double topSpacing = 16}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(32, topSpacing, 32, 16),
      child: child,
    );
  }

  TextStyle _paraStyle() {
    return TextStyle(fontSize: 16, height: 1.6, color: Colors.grey[700]);
  }

  Widget _buildCoursesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 900;
          final children = [
            _buildCourseCard('Basic Pooja Vidhanam', 'Learn the fundamentals of performing poojas correctly.', 'assets/images/pv2.png'),
            _buildCourseCard('Advanced Pooja Techniques', 'Master advanced techniques and mantras for deeper spiritual connection.', 'assets/images/pv3.png'),
            _buildCourseCard('Specific Deity Poojas', 'Explore poojas dedicated to specific deities for targeted blessings.', 'assets/images/pv4.png'),
          ];
          return isWide
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: children.map((e) => Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: e))).toList(),
                )
              : Column(
                  children: children.map((e) => Padding(padding: EdgeInsets.only(bottom: 16), child: e)).toList(),
                );
        },
      ),
    );
  }

 Widget _buildCourseCard(String title, String description, String imagePath) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          child: Image.asset(imagePath, height: 200, width: double.infinity, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(description, style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.4)),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildTestimonialsSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Testimonials", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 24),
        _buildTestimonialCard("Anya Sharma", "2 months ago", "Divine Rituals has transformed my understanding of poojas. The gurus are knowledgeable and patient, making the learning process enjoyable and effective."),
        SizedBox(height: 25),
        _buildTestimonialCard("Rohan Verma", "3 months ago", "I highly recommend Divine Rituals to anyone interested in learning Pooja Vidhanam. The courses are well-structured, and the support is excellent."),
        SizedBox(height: 25),
        _buildTestimonialCard("Priya Patel", "4 months ago", "The platform is user-friendly, and the content is comprehensive. I've gained a deeper appreciation for the rituals."),
      SizedBox(height: 40),
      ],
    ),
  );
}

Widget _buildTestimonialCard(String name, String date, String content) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFD4BB26),
            child: Text(name[0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(date, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
            ],
          )
        ],
      ),
      SizedBox(height: 8),
      Row(
        children: List.generate(5, (_) => Icon(Icons.star, size: 16, color: Colors.amber)),
      ),
      SizedBox(height: 12),
      Text(content, style: TextStyle(color: Colors.grey[800], height: 1.4)),
    ],
  );
}

 Widget _buildCTASection() {
  return Center(
    child: Column(
      children: [
        Text(
          'Embark on Your Spiritual Journey Today',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 24),
        SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffC1B11F),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
            child: Text('Get Started', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        )
      ],
    ),
  );
}


}
