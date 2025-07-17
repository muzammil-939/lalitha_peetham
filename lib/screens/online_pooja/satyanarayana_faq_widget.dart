
import 'package:flutter/material.dart';

class SatyanarayanaFaqWidget extends StatelessWidget {
  SatyanarayanaFaqWidget({super.key});
  final List<Map<String, String>> faqs = [
    {
      "question": "What Is Vastu Pooja And Why Is It Performed?",
      "answer":
          "Vastu Pooja aligns energy in your space, honoring directions to bring peace, prosperity, and health."
    },
    {
      "question": "Who Should Perform The Vastu Pooja?",
      "answer":
          "Anyone building, buying, or renovating a space should perform it to ensure positive energy."
    },
    {
      "question": "What Are The Benefits Of Doing Vastu Pooja?",
      "answer":
          "It balances the five elements, removes doshas, and brings harmony and success."
    },
    {
      "question": "What Are The Benefits Of Doing Vastu Pooja?",
      "answer":
          "It balances the five elements, removes doshas, and brings harmony and success."
    },
    {
      "question": "What Are The Benefits Of Doing Vastu Pooja?",
      "answer":
          "It balances the five elements, removes doshas, and brings harmony and success."
    },
    {
      "question": "What Are The Benefits Of Doing Vastu Pooja?",
      "answer":
          "It balances the five elements, removes doshas, and brings harmony and success."
    },
  ];

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:100.0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "SATYANARAYANA POOJA - FAQs",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 20),
          ...faqs.map((faq) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFE8D372),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  )
                ],
              ),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Text(faq["answer"]!),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}




