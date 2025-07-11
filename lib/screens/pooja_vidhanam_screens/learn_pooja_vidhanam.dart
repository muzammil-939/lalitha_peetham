import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class LearnPoojaVidhanam extends StatefulWidget {
  const LearnPoojaVidhanam({super.key});

  @override
  State<LearnPoojaVidhanam> createState() => _LearnPoojaVidhanamState();
}

class _LearnPoojaVidhanamState extends State<LearnPoojaVidhanam> {
  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Image
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                'assets/images/pv_mypurchase8.png',
                height: 350,
                width: 650,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),

            // Title
            const Text(
              "Learn Pooja Vidhanam",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),
            const Text(
              "Master the art of performing traditional Hindu rituals with precision and devotion.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),

            const SizedBox(height: 50),

            // What you'll learn section
            const Text(
              "What you'll learn",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 50),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _buildLearnCard(Icons.visibility, "Understand the\nsignificance of each ritual"),
                _buildLearnCard(Icons.menu_book, "Learn the correct\nprocedures for various poojas"),
                _buildLearnCard(Icons.check_circle_outline, "Gain confidence in\nperforming poojas independently"),
                _buildLearnCard(Icons.self_improvement, "Deepen your\nspiritual connection through rituals"),
              ],
            ),

            const SizedBox(height: 50),

            // Instructor section
            const Text(
              "Instructor",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage('assets/images/pv_mypurchase9.png'),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Priya Sharma",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Experienced Priestess and Vedic Scholar",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Priya Sharma is a renowned priestess with over 20 years of experience in performing and teaching Vedic rituals. Her deep understanding of the scriptures and her ability to explain complex concepts in a simple manner make her a highly sought-after instructor.",
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),

            const SizedBox(height: 32),

            // Course Syllabus
            const Text(
              "Course Syllabus",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            _buildExpansionTile(
              title: "Introduction to Pooja Vidhanam",
              subtitle:
                  "This section covers the basics of Pooja Vidhanam, including its importance, different types of poojas, and the necessary materials.",
            ),
            _buildExpansionTile(title: "Preparation for the Pooja"),
            _buildExpansionTile(title: "Performing the Pooja"),
            _buildExpansionTile(title: "Post-Pooja Rituals"),
            _buildExpansionTile(title: "Advanced Pooja Techniques"),

            const SizedBox(height: 32),

            // Requirements
            const Text(
              "Requirements",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            const Text(
              "No prior knowledge of Pooja Vidhanam is required. A basic understanding of Hindu traditions and a willingness to learn are sufficient.",
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),

            const SizedBox(height: 32),

            // Enroll Now
            const Text(
              "Enroll Now",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            const Text(
              "Price: \$49.99",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD4BB26),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text("Enroll Now",style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xffEBEDF2),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: const BorderSide(color: Color(0xffEBEDF2)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: const Text("Watch Free Preview"),
                ),
              ],
            ),

            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }

  Widget _buildLearnCard(IconData icon, String title) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 25, color: Colors.black),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 14,color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

Widget _buildExpansionTile({
  required String title,
  String? subtitle,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 6),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        subtitle: subtitle != null
            ? Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  subtitle,
                  style: const TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
              )
            : null,
        trailing: const Icon(Icons.keyboard_arrow_down_rounded),
        children: const [
          Text(
            "Coming soon...",
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    ),
  );
}

}
