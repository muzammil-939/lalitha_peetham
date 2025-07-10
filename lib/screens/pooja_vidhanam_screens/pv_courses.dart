import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvCourses extends StatefulWidget {
  const PvCourses({super.key});

  @override
  State<PvCourses> createState() => _PvCoursesState();
}

class _PvCoursesState extends State<PvCourses> {
  int? selectedDuration;
int? selectedType;
int? selectedLevel = 0; // Default to Beginner
int? selectedLanguage = 0; // Default to English

  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 24.0),
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFilters(),
              const SizedBox(width: 32),
              Expanded(child: _buildCourseSection()),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildFilters() {
  return SizedBox(
    width: 220,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Filters", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),

        _buildFilterSection(
          "Duration",
          ["0-30 mins", "30-60 mins", "60+ mins"],
          selectedIndex: selectedDuration,
          onSelected: (index) {
            setState(() {
              selectedDuration = index;
            });
          },
        ),

        _buildFilterSection(
          "Type",
          ["Recorded", "Live"],
          selectedIndex: selectedType,
          onSelected: (index) {
            setState(() {
              selectedType = index;
            });
          },
        ),

        _buildFilterSection(
          "Level",
          ["Beginner", "Intermediate", "Advanced"],
          selectedIndex: selectedLevel,
          onSelected: (index) {
            setState(() {
              selectedLevel = index;
            });
          },
        ),

        _buildFilterSection(
          "Language",
          ["English", "Hindi", "Telugu", "Tamil", "Kannada", "Malayalam"],
          selectedIndex: selectedLanguage,
          onSelected: (index) {
            setState(() {
              selectedLanguage = index;
            });
          },
        ),
      ],
    ),
  );
}


Widget _buildFilterSection(String title, List<String> options, {int? selectedIndex, required void Function(int index) onSelected}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),
        ...List.generate(options.length, (index) {
          final isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: GestureDetector(
              onTap: () => onSelected(index),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? Colors.amber.shade100 : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected ? Colors.amber : Colors.grey.shade300,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected ? Colors.amber : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: isSelected
                          ? Center(
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        options[index],
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ],
    ),
  );
}



  Widget _buildCourseSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Courses", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          children: ["All", "Newest", "Popular", "Highest Rated", "Free"]
              .map((filter) => Chip(
                    label: Text(filter),
                    backgroundColor: filter == "All" ? Color(0xffD4BB26) : Color(0xffF9F0E4),
                  ))
              .toList(),
        ),
        const SizedBox(height: 24),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10, // increased spacing for clarity
            crossAxisSpacing: 20,
            childAspectRatio: 0.7, // enough to hold square + content
          ),
          itemCount: courseData.length,
          itemBuilder: (context, index) {
            final course = courseData[index];
            return _buildCourseCard(course);
          },
        )
      ],
    );
  }

Widget _buildCourseCard(Map<String, dynamic> course) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          course['image'],
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: 8),
      SizedBox(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course['title'],
              style: const TextStyle(fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(course['duration'], style: const TextStyle(color: Colors.grey, fontSize: 13)),
            const SizedBox(height: 2),
            Row(
              children: [
                const Icon(Icons.star, size: 16, color: Colors.amber),
                const SizedBox(width: 4),
                Text(course['rating'].toString(), style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD4BB26),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: const Text("View Details", style: TextStyle(fontSize: 13)),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


}

final List<Map<String, dynamic>> courseData = [
  {
    'title': 'Complete Guide to Ganesh Puja',
    'duration': '1 hr 15 mins',
    'rating': 4.8,
    'image': 'assets/images/pv_couses1.jpg'
  },
  {
    'title': 'Lakshmi Puja: A Step-by-Step Guide',
    'duration': '45 mins',
    'rating': 4.7,
    'image': 'assets/images/pv_couses2.jpg'
  },
  {
    'title': 'Navratri Special: 9 Days of Devotion',
    'duration': '2 hrs 30 mins',
    'rating': 4.9,
    'image': 'assets/images/pv_couses3.jpg'
  },
  {
    'title': 'Durga Puja: A Comprehensive Guide',
    'duration': '2 hrs',
    'rating': 4.8,
    'image': 'assets/images/pv_couses4.jpg'
  },
  {
    'title': 'Satyanarayan Puja: The Complete Guide',
    'duration': '1 hr',
    'rating': 4.5,
    'image': 'assets/images/pv_couses5.png'
  },
  {
    'title': 'Shiva Puja: Understanding the Rituals',
    'duration': '1 hr 45 mins',
    'rating': 4.6,
    'image': 'assets/images/pv_couses6.jpg'
  },
  {
    'title': 'Durga Puja: A Comprehensive Guide',
    'duration': '2 hrs',
    'rating': 4.8,
    'image': 'assets/images/pv_couses7.png'
  },
  {
    'title': 'Satyanarayan Puja: The Complete Guide',
    'duration': '1 hr',
    'rating': 4.5,
    'image': 'assets/images/pv_couses8.png'
  },
  {
    'title': 'Shiva Puja: Understanding the Rituals',
    'duration': '1 hr 45 mins',
    'rating': 4.6,
    'image': 'assets/images/pv_couses9.png'
  },
];
