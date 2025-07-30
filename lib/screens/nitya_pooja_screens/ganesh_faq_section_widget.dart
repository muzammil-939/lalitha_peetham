import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GaneshaFaqWidget extends StatelessWidget {
  GaneshaFaqWidget({super.key});

  final List<Map<String, String>> faqs = [
    {
      "question": "What Is The Significance Of Ganesh Pooja?",
      "answer":
          "Ganesh Pooja symbolizes the removal of obstacles and the beginning of auspicious tasks. It invokes Lord Ganesha’s blessings for clarity, wisdom, and success."
    },
    {
      "question": "When Is The Best Time To Perform Ganesh Pooja?",
      "answer":
          "Ganesh Pooja is ideal during Ganesh Chaturthi or before starting new ventures like housewarming, exams, or business openings."
    },
    {
      "question": "What Items Are Required For Ganesh Pooja?",
      "answer":
          "Common items include idol or photo of Ganesha, flowers, durva grass, modaks, incense, lamp, red cloth, coconut, and mantras."
    },
    {
      "question": "Can I Perform Ganesh Pooja At Home By Myself?",
      "answer":
          "Yes. With devotion and basic guidance, you can perform Ganesh Pooja at home. Many follow simple rituals with prayers and offerings."
    },
    {
      "question": "How Long Does The Pooja Take?",
      "answer":
          "Depending on the steps and rituals performed, a typical Ganesh Pooja may take between 30 to 90 minutes."
    },
    {
      "question": "What Is The Significance Of The Ganesha Katha?",
      "answer":
          "The Ganesha Katha narrates tales of Lord Ganesha’s wisdom and compassion, inspiring devotees with life lessons and moral guidance."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "GANESHA PUJA - FAQs",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                height: 1.4,
                color: Color(0xFFD4AF37), // gold shade like in image
              ),
            ),
            const SizedBox(height: 20),
            ...faqs.map((faq) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F2E7),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    )
                  ],
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(
                      faq["question"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    iconColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                        child: Text(
                          faq["answer"]!,
                          style: const TextStyle(fontSize: 14, height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
