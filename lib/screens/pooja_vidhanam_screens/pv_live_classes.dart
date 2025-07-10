import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvLiveClasses extends StatefulWidget {
  const PvLiveClasses({super.key});

  @override
  State<PvLiveClasses> createState() => _PvLiveClassesState();
}

class _PvLiveClassesState extends State<PvLiveClasses> {
  final List<Map<String, String>> liveClasses = [
    {
      'title': 'Introduction to Home Pooja',
      'description': 'Learn the basics of performing a simple home pooja, including mantras and rituals.',
      'time': 'October 26, 2024 | 10:00 AM – 11:00 AM',
      'image': 'assets/images/pv_live_classes1.png'
    },
    {
      'title': 'Significance of Offerings in Pooja',
      'description': 'Understand the significance of various offerings and their symbolic meanings in pooja.',
      'time': 'November 2, 2024 | 11:30 AM – 12:30 PM',
      'image': 'assets/images/pv_live_classes2.png'
    },
    {
      'title': 'Satyanarayan Pooja Vidhanam',
      'description': 'A step-by-step guide to performing a Satyanarayan Pooja, including preparation and rituals.',
      'time': 'November 9, 2024 | 9:00 AM – 10:00 AM',
      'image': 'assets/images/pv_live_classes3.png'
    },
    {
      'title': 'Mantras and Their Significance',
      'description': 'Learn about the different types of mantras and their uses in various poojas.',
      'time': 'November 16, 2024 | 10:00 AM – 11:00 AM',
      'image': 'assets/images/pv_live_classes4.png'
    },
    {
      'title': 'Music and Chants in Pooja',
      'description': 'Explore the role of music and chants in enhancing the spiritual experience of pooja.',
      'time': 'November 23, 2024 | 11:30 AM – 12:30 PM',
      'image': 'assets/images/pv_live_classes5.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Live Classes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              'Join our live sessions to learn from experienced instructors and interact with fellow learners.',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            const Text(
              'Upcoming Classes',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...liveClasses.map((classItem) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            classItem['image']!,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classItem['title']!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                classItem['description']!,
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                classItem['time']!,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1FD042),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Join Now',
                            style: TextStyle(fontSize: 12,color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
