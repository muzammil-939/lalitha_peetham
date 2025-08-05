import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

class OnlineMuhurthasFaq extends StatefulWidget {
  const OnlineMuhurthasFaq({super.key});

  @override
  _OnlineMuhurthasFaqState createState() => _OnlineMuhurthasFaqState();
}

class _OnlineMuhurthasFaqState extends State<OnlineMuhurthasFaq> {
  int? expandedIndex;

  final List<Map<String, String>> faqItems = [
    {
      'question': 'What is Muhurtam?',
      'answer':
          'Muhurtam is an auspicious time period in Hindu astrology that is considered favorable for conducting important activities, ceremonies, and rituals...',
    },
    {
      'question': 'Why is Muhurtam important?',
      'answer':
          'Muhurtam is important because it helps align human activities with cosmic energies...',
    },
    {
      'question': 'How is Muhurtam calculated?',
      'answer':
          'Muhurtam is calculated based on various astrological factors...',
    },
    {
      'question': 'What is the significance of horoscope matching?',
      'answer':
          'Horoscope matching, also known as Kundali matching, is the process of comparing the birth charts...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ResponsiveHelper.isMobile(context);
    final bool isTablet = ResponsiveHelper.isTablet(context);
    final bool isDesktop = ResponsiveHelper.isDesktop(context);

    double horizontalPadding = isMobile
        ? 16
        : isTablet
            ? 48
            : 200;

    double titleFontSize = isMobile
        ? 20
        : isTablet
            ? 26
            : 32;

    double questionFontSize = isMobile
        ? 14
        : isTablet
            ? 15
            : 16;

    double answerFontSize = isMobile
        ? 13
        : isTablet
            ? 13.5
            : 14;

    return OnlineMuhurthasLayout(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            horizontalPadding, 60, horizontalPadding, 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Text(
                'Frequently Asked Questions',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1A1A1A),
                  letterSpacing: -0.5,
                ),
              ),
            ),

            // FAQ Items
            Column(
              children: faqItems.asMap().entries.map((entry) {
                int index = entry.key;
                Map<String, String> item = entry.value;
                bool isExpanded = expandedIndex == index;

                return Container(
                  margin: EdgeInsets.only(
                    bottom: index < faqItems.length - 1 ? 16.0 : 0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: const Color(0xFFE5E7EB),
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      // Question Header
                      InkWell(
                        onTap: () {
                          setState(() {
                            expandedIndex = isExpanded ? null : index;
                          });
                        },
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 18.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  item['question']!,
                                  style: TextStyle(
                                    fontSize: questionFontSize,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF1F2937),
                                    height: 1.4,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              AnimatedRotation(
                                turns: isExpanded ? 0.5 : 0,
                                duration: const Duration(milliseconds: 200),
                                child: const Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 24.0,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Answer Content
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: isExpanded ? null : 0,
                        child: isExpanded
                            ? Container(
                                width: double.infinity,
                                padding: const EdgeInsets.fromLTRB(
                                  20.0,
                                  0,
                                  20.0,
                                  20.0,
                                ),
                                child: Text(
                                  item['answer']!,
                                  style: TextStyle(
                                    fontSize: answerFontSize,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF6B7280),
                                    height: 1.5,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
