import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/upcoming_poojas_screens/upcoming_pooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GaneshChathurthiPooja extends StatefulWidget {
  const GaneshChathurthiPooja({super.key});

  @override
  State<GaneshChathurthiPooja> createState() => _GaneshChathurthiPoojaState();
}

class _GaneshChathurthiPoojaState extends State<GaneshChathurthiPooja> {
  final List<Map<String, String>> faqList = [
    {'question': 'How do I book a Ganesh Chaturthi Pooja?', 'answer': ''},
    {'question': 'What materials are required for the pooja?', 'answer': ''},
    {'question': 'Can the pooja be conducted online?', 'answer': ''},
    {'question': 'Are priests available for home poojas?', 'answer': ''},
    {'question': 'Can I customize the pooja package?', 'answer': ''},
  ];

  List<bool> isExpandedList = [];

  @override
  void initState() {
    super.initState();
    isExpandedList = List.generate(faqList.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return UpcomingPoojaLayout(
      child: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal: isMobile ?16 :isTablet ?80 : 150,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/ganesh.png', 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Ganesh Chaturthi Pooja",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "Wednesday, August 27, 2025",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 15),
            const Text(
              "Ganesh Chaturthi, also known as Vinayaka Chaturthi, is a Hindu festival celebrating the birth of Lord Ganesha. This auspicious occasion spans 10 days, starting from Chaturthi Tithi and culminating on Anant Chaturdashi. It is a time of great devotion and festivity, marking new beginnings, success, and the removal of obstacles.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE4C74D),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                context.go('/your_booking_upcoming_pooja');
              },
              child: const Text(
                "Book Now",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Significance of Ganesh Chaturthi Pooja",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Lord Ganesha, the elephant-headed deity, is revered as the god of wisdom, prosperity, and good fortune. Performing Ganesh Chaturthi Pooja is believed to invoke his blessings for a prosperous and obstacle-free life. It is a time to seek his divine grace for success in all endeavors and to strengthen family bonds through collective worship.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 25),
            const Text(
              "Benefits of Performing Ganesh Chaturthi Pooja",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Performing Ganesh Chaturthi Pooja is believed to bestow numerous benefits, including:",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 10),
            const Text(
              "• **Wisdom and Knowledge:** Seeking blessings for enhanced intellect and understanding.\n"
              "• **Success and Prosperity:** Invoking good fortune and success in personal and professional life.\n"
              "• **Removal of Obstacles:** Praying for the removal of hurdles and challenges.\n"
              "• **Family Harmony:** Strengthening bonds and fostering unity within the family.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),
            const Text(
              "Frequently Asked Questions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            ExpansionPanelList(
              elevation: 0,
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  isExpandedList[index] = !isExpanded;
                });
              },
              children: faqList.asMap().entries.map((entry) {
                int idx = entry.key;
                var faq = entry.value;
                return ExpansionPanel(
                  backgroundColor: Color(0xFFE4C74D),
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        faq['question']!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    );
                  },
                  body: faq['answer']!.isEmpty
                      ? const SizedBox.shrink()
                      : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            faq['answer']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                  isExpanded: isExpandedList[idx],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
