import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';

class OnlineMuhurthasUpcomingMuhurthams extends StatefulWidget {
  const OnlineMuhurthasUpcomingMuhurthams({Key? key}) : super(key: key);

  @override
  State<OnlineMuhurthasUpcomingMuhurthams> createState() =>
      _OnlineMuhurthasUpcomingMuhurthamsState();
}

class _OnlineMuhurthasUpcomingMuhurthamsState
    extends State<OnlineMuhurthasUpcomingMuhurthams> {
  String selectedConsultationType = 'Standard Consultation';
  DateTime selectedDate = DateTime(2024, 7, 20);
  String selectedTime = '10:00 AM';

  @override
  Widget build(BuildContext context) {
    return OnlineMuhurthasLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Breadcrumb
            Row(
              children: [
                Text(
                  'Muhurtam',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                Text(
                  ' / ',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                const Text(
                  'Marriage',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Title
            const Text(
              'Marriage Muhurtam',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 40),

            // Select Consultation Type
            const Text(
              'Select Consultation Type',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Consultation Options
            _buildConsultationOption(
              'Standard Consultation',
              'Get a detailed analysis of auspicious dates and times for your marriage.',
              true,
            ),
            const SizedBox(height: 16),
            _buildConsultationOption(
              'Premium Consultation',
              'Receive personalized guidance and support from our expert astrologers.',
              false,
            ),
            const SizedBox(height: 40),

            // Select Date and Time
            const Text(
              'Select Date and Time',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),

            // Calendar Section
            Row(
              children: [
                // Left Arrow
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chevron_left, size: 24),
                ),

                // Calendars
                Expanded(
                  child: Row(
                    children: [
                      // July 2024 Calendar
                      Expanded(
                        child: _buildCalendar(
                          'July 2024',
                          _getJulyDays(),
                          highlightedDay: 5,
                          selectedDay: 20,
                        ),
                      ),
                      const SizedBox(width: 80),

                      // August 2024 Calendar
                      Expanded(
                        child: _buildCalendar(
                          'August 2024',
                          _getAugustDays(),
                          highlightedDay: 29,
                        ),
                      ),
                    ],
                  ),
                ),

                // Right Arrow
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chevron_right, size: 24),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Time Selection
            Container(
              width: 200,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Select Time',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const Icon(Icons.keyboard_arrow_down, color: Colors.black54),
                ],
              ),
            ),
            const SizedBox(height: 40),

            // Booking Summary
            const Text(
              'Booking Summary',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Summary Details
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Consultation Type',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    const Text(
                      'Standard Consultation',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Time',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    const Text(
                      '10:00 AM',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 80),

                // Right Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    const Text(
                      'July 20, 2024',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Proceed to Payment Button
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/online_muhurthas_payment_success');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4AF37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Proceed to Payment',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConsultationOption(
    String title,
    String description,
    bool isSelected,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? const Color(0xFFD4AF37) : Colors.grey[400]!,
                width: 2,
              ),
            ),
            child:
                isSelected
                    ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFD4AF37),
                        ),
                      ),
                    )
                    : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar(
    String monthYear,
    List<List<dynamic>> days, {
    int? highlightedDay,
    int? selectedDay,
  }) {
    return Column(
      children: [
        // Month Header
        Text(
          monthYear,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),

        // Days of Week Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
              ['S', 'M', 'T', 'W', 'T', 'F', 'S']
                  .map(
                    (day) => Expanded(
                      child: Center(
                        child: Text(
                          day,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
        ),
        const SizedBox(height: 12),

        // Calendar Grid
        Container(
          height: 240,
          child: Column(
            children:
                days
                    .map(
                      (week) => Expanded(
                        child: Row(
                          children:
                              week.map<Widget>((day) {
                                if (day == null) {
                                  return const Expanded(child: SizedBox());
                                }

                                bool isHighlighted = day == highlightedDay;
                                bool isSelected = day == selectedDay;

                                return Expanded(
                                  child: Center(
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration:
                                          isSelected
                                              ? const BoxDecoration(
                                                color: Color(0xFFD4AF37),
                                                shape: BoxShape.circle,
                                              )
                                              : isHighlighted
                                              ? const BoxDecoration(
                                                color: Color(0xFFE8F5E8),
                                                shape: BoxShape.circle,
                                              )
                                              : null,
                                      child: Center(
                                        child: Text(
                                          day.toString(),
                                          style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                isSelected
                                                    ? Colors.white
                                                    : Colors.black,
                                            fontWeight:
                                                isSelected || isHighlighted
                                                    ? FontWeight.w600
                                                    : FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }

  List<List<dynamic>> _getJulyDays() {
    return [
      [null, 1, 2, 3, 4, 5, 6],
      [7, 8, 9, 10, 11, 12, 13],
      [14, 15, 16, 17, 18, 19, 20],
      [21, 22, 23, 24, 25, 26, 27],
      [28, 29, 30, 31, null, null, null],
    ];
  }

  List<List<dynamic>> _getAugustDays() {
    return [
      [null, null, null, null, 1, 2, 3],
      [4, 5, 6, 7, 8, 9, 10],
      [11, 12, 13, 14, 15, 16, 17],
      [18, 19, 20, 21, 22, 23, 24],
      [25, 26, 27, 28, 29, 30, 31],
    ];
  }
}
