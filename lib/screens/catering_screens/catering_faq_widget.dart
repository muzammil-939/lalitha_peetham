import 'package:flutter/material.dart';

class CateringFaqWidget extends StatefulWidget {
  const CateringFaqWidget({super.key});

  @override
  State<CateringFaqWidget> createState() => _CateringFaqWidgetState();
}

class _CateringFaqWidgetState extends State<CateringFaqWidget> {
     final List<String> questions = [
    "What Types Of Cuisine Do You Offer?",
    "Do You Provide Tasting Sessions Before Booking?",
    "Can You Accommodate Dietary Restrictions And Allergies?",
    "What Services Are Included In Your Catering Packages?",
    "How Far In Advance Should We Book Your Services?",
    "Do You Handle Event Decor And Table Settings As Well?",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "CATERER- FAQs",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),

          // FAQ List
          ...questions.map((question) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFE8D372), // yellow button color
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(4, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  title: Text(
                    question,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        "Answer goes here...",
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}