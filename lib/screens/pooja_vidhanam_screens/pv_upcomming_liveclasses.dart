import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvUpcommingLiveclasses extends StatefulWidget {
  const PvUpcommingLiveclasses({super.key});

  @override
  State<PvUpcommingLiveclasses> createState() => _PvUpcommingLiveclassesState();
}

class _PvUpcommingLiveclassesState extends State<PvUpcommingLiveclasses> {
  final List<Map<String, String>> classes = [
    {
      "title": "Beginner's Guide to Vedic Rituals",
      "date": "Saturday, July 20, 2024 | 10:00 AM",
      "route": "/"
    },
    {
      "title": "Advanced Techniques in Mantra Recitation",
      "date": "Sunday, July 21, 2024 | 11:00 AM",
      "route": "/class2"
    },
    {
      "title": "Understanding the Symbolism in Rituals",
      "date": "Monday, July 22, 2024 | 9:00 AM",
      "route": "/class3"
    },
    {
      "title": "Intermediate Pooja Practices",
      "date": "Tuesday, July 23, 2024 | 10:00 AM",
      "route": "/class4"
    },
    {
      "title": "Advanced Pooja Practices",
      "date": "Wednesday, July 24, 2024 | 11:00 AM",
      "route": "/class5"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Live Class Reminders',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 32),
            ...classes.map((item) => _buildClassTile(item)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildClassTile(Map<String, String> classInfo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.notifications_none, size: 28, color: Colors.grey),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classInfo["title"] ?? "",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  classInfo["date"] ?? "",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          InkWell(
            onTap: () {
              // 🔁 Replace this with your navigation or logic
              final route = classInfo['route'];
              debugPrint("Joining class at: $route");
              // Example:
              // Navigator.pushNamed(context, route!);
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFFD4BB26),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Join Class',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
