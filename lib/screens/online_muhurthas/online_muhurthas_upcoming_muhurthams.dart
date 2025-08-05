import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

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
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  final horizontalPadding = isMobile
      ? 16.0
      : isTablet
          ? 40.0
          : 200.0;

  final verticalPadding = isMobile
      ? 20.0
      : isTablet
          ? 40.0
          : 60.0;

  final calendarSpacing = isMobile ? 16.0 : 80.0;
  final buttonWidth = isMobile ? double.infinity : 300.0;
  final titleFontSize = isMobile ? 24.0 : 32.0;

  return OnlineMuhurthasLayout(
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
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
          Text(
            'Marriage Muhurtam',
            style: TextStyle(
              fontSize: titleFontSize,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_left, size: 24),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: _buildCalendar(
                        'July 2024',
                        _getJulyDays(),
                        highlightedDay: 5,
                        selectedDay: 20,
                      ),
                    ),
                    SizedBox(width: calendarSpacing),
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
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right, size: 24),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Time Selection
          Container(
            width: isMobile ? double.infinity : 200,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Select Time',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.black54),
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

          // Responsive Summary Section
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSummaryColumn1(),
                    const SizedBox(height: 20),
                    _buildSummaryColumn2(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSummaryColumn1(),
                    const SizedBox(width: 80),
                    _buildSummaryColumn2(),
                  ],
                ),
          const SizedBox(height: 40),

          // Proceed to Payment Button
          SizedBox(
            width: buttonWidth,
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

Widget _buildSummaryColumn1() {
  return Column(
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
  );
}

Widget _buildSummaryColumn2() {
  return Column(
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
