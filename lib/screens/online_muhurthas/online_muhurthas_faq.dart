import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

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
          'Muhurtam is an auspicious time period in Hindu astrology that is considered favorable for conducting important activities, ceremonies, and rituals. It represents a specific window of time when planetary positions are believed to be most favorable for achieving success and positive outcomes.',
    },
    {
      'question': 'Why is Muhurtam important?',
      'answer':
          'Muhurtam is important because it helps align human activities with cosmic energies. By choosing the right time for important events like marriages, business ventures, or religious ceremonies, people believe they can maximize positive outcomes and minimize obstacles.',
    },
    {
      'question': 'How is Muhurtam calculated?',
      'answer':
          'Muhurtam is calculated based on various astrological factors including planetary positions, lunar phases, nakshatras (constellations), tithis (lunar days), and the specific purpose of the activity. Astrologers use traditional calculations and almanacs to determine the most auspicious times.',
    },
    {
      'question': 'What is the significance of horoscope matching?',
      'answer':
          'Horoscope matching, also known as Kundali matching, is the process of comparing the birth charts of prospective partners to assess their compatibility. It evaluates various factors like guna matching, mangal dosha, and planetary positions to predict marital harmony and happiness.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(200, 60, 200, 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Padding(
              padding: EdgeInsets.only(bottom: 32.0),
              child: Text(
                'Frequently Asked Questions',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                  letterSpacing: -0.5,
                ),
              ),
            ),

            // FAQ Items
            Column(
              children:
                  faqItems.asMap().entries.map((entry) {
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
                          color: Color(0xFFE5E7EB),
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
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 18.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      item['question']!,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF1F2937),
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16.0),
                                  AnimatedRotation(
                                    turns: isExpanded ? 0.5 : 0,
                                    duration: Duration(milliseconds: 200),
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 24.0,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Answer Content (Expandable)
                          AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            height: isExpanded ? null : 0,
                            child:
                                isExpanded
                                    ? Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.fromLTRB(
                                        20.0,
                                        0,
                                        20.0,
                                        20.0,
                                      ),
                                      child: Text(
                                        item['answer']!,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF6B7280),
                                          height: 1.5,
                                        ),
                                      ),
                                    )
                                    : SizedBox.shrink(),
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
