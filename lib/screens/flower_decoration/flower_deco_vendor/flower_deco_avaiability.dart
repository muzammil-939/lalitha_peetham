import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_layout.dart';

class FlowerDecoAvaiability extends StatefulWidget {
  const FlowerDecoAvaiability({super.key});

  @override
  FlowerDecoAvaiabilityState createState() => FlowerDecoAvaiabilityState();
}

class FlowerDecoAvaiabilityState extends State<FlowerDecoAvaiability> {
  String selectedServiceType = 'Wedding Stage Decoration';
  String selectedPriceRange = '50,000 - 60,000';
  String selectedWorkingHours = 'Morning';
  DateTime startDate = DateTime(2021, 9, 12);
  DateTime endDate = DateTime(2021, 10, 11);
  TimeOfDay selectedTime = const TimeOfDay(hour: 1, minute: 0);
  String timeFormat = 'AM';

  @override
  Widget build(BuildContext context) {
    return FlowerDecoVendorLayout(
      child: Container(
        padding: const EdgeInsets.fromLTRB(200, 50, 200, 150),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 50),
            _buildServiceType(),
            const SizedBox(height: 30),
            _buildPriceRange(),
            const SizedBox(height: 30),
            _buildWorkingHours(),
            const SizedBox(height: 40),
            _buildDateSelection(),
            const SizedBox(height: 30),
            _buildTimeSelection(),
            const SizedBox(height: 40),
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            Text(
              ' / / EDIT AVAILABILITY',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceType() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SERVICE TYPE',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF666666),
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFDDDDDD)),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedServiceType,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFF666666),
              ),
              isExpanded: true,
              items:
                  [
                    'Wedding Stage Decoration',
                    'Flower Decoration',
                    'Event Decoration',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF666666),
                        ),
                      ),
                    );
                  }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedServiceType = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceRange() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PRICE RANGE',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF666666),
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFDDDDDD)),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedPriceRange,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFF666666),
              ),
              isExpanded: true,
              items:
                  ['50,000 - 60,000', '30,000 - 40,000', '60,000 - 70,000'].map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF666666),
                          ),
                        ),
                      );
                    },
                  ).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedPriceRange = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWorkingHours() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'WORKING HOURS',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF666666),
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFDDDDDD)),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedWorkingHours,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFF666666),
              ),
              isExpanded: true,
              items:
                  ['Morning', 'Afternoon', 'Evening'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF666666),
                        ),
                      ),
                    );
                  }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedWorkingHours = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateSelection() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Start Date',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF666666),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Sept 12, 2021',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            const Text(
              'to',
              style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'End Date',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF666666),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Oct 11, 2021',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        _buildCalendars(),
      ],
    );
  }

  Widget _buildCalendars() {
    return Row(
      children: [
        Expanded(child: _buildSeptemberCalendar()),
        const SizedBox(width: 20),
        Expanded(child: _buildOctoberCalendar()),
      ],
    );
  }

  Widget _buildSeptemberCalendar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 20,
                      color: Color(0xFF666666),
                    ),
                  ),
                  const Text(
                    'September 2021',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF666666),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Color(0xFF666666),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            _buildCalendarGrid(true),
          ],
        ),
      ),
    );
  }

  Widget _buildOctoberCalendar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 20,
                      color: Color(0xFF666666),
                    ),
                  ),
                  const Text(
                    'October 2021',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF666666),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Color(0xFF666666),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            _buildCalendarGrid(false),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendarGrid(bool isSeptember) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Week days header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
                ['M', 'T', 'W', 'T', 'F', 'S', 'S']
                    .map(
                      (day) => Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          day,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF666666),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
          const SizedBox(height: 8),
          // Calendar dates
          if (isSeptember) ..._buildSeptemberDates(),
          if (!isSeptember) ..._buildOctoberDates(),
        ],
      ),
    );
  }

  List<Widget> _buildSeptemberDates() {
    return [
      // Week 1 (empty + 1)
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('', false, false),
          _buildDateCell('', false, false),
          _buildDateCell('1', false, false),
          _buildDateCell('2', false, false),
          _buildDateCell('3', false, false),
          _buildDateCell('4', false, false),
          _buildDateCell('5', false, false),
        ],
      ),
      // Week 2
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('6', false, false),
          _buildDateCell('7', false, false),
          _buildDateCell('8', false, false),
          _buildDateCell('9', false, false),
          _buildDateCell('10', false, false),
          _buildDateCell('11', false, false),
          _buildDateCell('12', true, false), // Selected date
        ],
      ),
      // Week 3
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('13', false, false),
          _buildDateCell('14', false, false),
          _buildDateCell('15', false, false),
          _buildDateCell('16', false, false),
          _buildDateCell('17', false, false),
          _buildDateCell('18', false, false),
          _buildDateCell('19', false, false),
        ],
      ),
      // Week 4
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('20', false, false),
          _buildDateCell('21', false, false),
          _buildDateCell('22', false, false),
          _buildDateCell('23', false, false),
          _buildDateCell('24', false, false),
          _buildDateCell('25', false, false),
          _buildDateCell('26', false, false),
        ],
      ),
      // Week 5
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('27', false, false),
          _buildDateCell('28', false, false),
          _buildDateCell('29', false, false),
          _buildDateCell('30', false, false),
          _buildDateCell('', false, false),
          _buildDateCell('', false, false),
          _buildDateCell('', false, false),
        ],
      ),
    ];
  }

  List<Widget> _buildOctoberDates() {
    return [
      // Week 1
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('', false, false),
          _buildDateCell('', false, false),
          _buildDateCell('', false, false),
          _buildDateCell('', false, false),
          _buildDateCell('1', false, false),
          _buildDateCell('2', false, false),
          _buildDateCell('3', false, false),
        ],
      ),
      // Week 2
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('4', false, false),
          _buildDateCell('5', false, false),
          _buildDateCell('6', false, false),
          _buildDateCell('7', false, false),
          _buildDateCell('8', false, false),
          _buildDateCell('9', false, false),
          _buildDateCell('10', false, false),
        ],
      ),
      // Week 3
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell(
            '11',
            false,
            true,
          ), // Selected date (highlighted in green)
          _buildDateCell('12', false, false),
          _buildDateCell('13', false, false),
          _buildDateCell('14', false, false),
          _buildDateCell('15', false, false),
          _buildDateCell('16', false, false),
          _buildDateCell('17', false, false),
        ],
      ),
      // Week 4
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('18', false, false),
          _buildDateCell('19', false, false),
          _buildDateCell('20', false, false),
          _buildDateCell('21', false, false),
          _buildDateCell('22', false, false),
          _buildDateCell('23', false, false),
          _buildDateCell('24', false, false),
        ],
      ),
      // Week 5
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDateCell('25', false, false),
          _buildDateCell('26', false, false),
          _buildDateCell('27', false, false),
          _buildDateCell('28', false, false),
          _buildDateCell('29', false, false),
          _buildDateCell('30', false, false),
          _buildDateCell('31', false, false),
        ],
      ),
    ];
  }

  Widget _buildDateCell(String date, bool isSelected, bool isHighlighted) {
    if (date.isEmpty) {
      return Container(width: 30, height: 30);
    }

    Color backgroundColor = Colors.transparent;
    Color textColor = const Color(0xFF666666);

    if (isSelected) {
      backgroundColor = const Color(0xFFD4BB26);
      textColor = Colors.white;
    } else if (isHighlighted) {
      backgroundColor = const Color(0xFF4CAF50);
      textColor = Colors.white;
    }

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Text(
        date,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }

  Widget _buildTimeSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ENTER TIME',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF666666),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Container(
              width: 60,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD4BB26), width: 2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFD4BB26),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              ':',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF666666),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 60,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFDDDDDD)),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(
                child: Text(
                  '00',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF666666),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              children: [
                Container(
                  width: 40,
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'AM',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  width: 40,
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFDDDDDD)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'PM',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text(
              'Hour',
              style: TextStyle(fontSize: 10, color: Color(0xFF666666)),
            ),
            const SizedBox(width: 32),
            const Text(
              'Minute',
              style: TextStyle(fontSize: 10, color: Color(0xFF666666)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Icon(Icons.access_time, size: 16, color: Color(0xFF666666)),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {},
              child: const Text(
                'CANCEL',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFD4BB26),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                'OK',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFD4BB26),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        SizedBox(
          width: 120,
          height: 45,
          child: ElevatedButton(
            onPressed: () => context.go('/one_to_one_sessions'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Color(0xFFDDDDDD)),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(
              'CANCEL',
              style: TextStyle(
                color: Color(0xFF666666),
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 160,
          height: 50,
          child: ElevatedButton(
            onPressed: () => context.go('/one_to_one_sessions'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFB8A835),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(
              'SAVE CHANGES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
