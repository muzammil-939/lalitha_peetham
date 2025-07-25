import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

import 'hall_booking_layout.dart';

class HallBookingBookHall extends StatefulWidget {
  @override
  _HallBookingBookHallState createState() => _HallBookingBookHallState();
}

class _HallBookingBookHallState extends State<HallBookingBookHall> {
  String selectedEventType = 'Select Event Type';
  String selectedDate = 'Select Date';
  String selectedTime = 'Select Time';
  String selectedDuration = 'Select Duration';
  int selectedJulyDate = 5;
  int selectedAugustDate = 7;

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main image container
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/hall_booking_imgs/hall_booking_1.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 50),

            // Title
            Text(
              'The Grand Ballroom',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 12),

            // Description
            Text(
              'Located in the heart of downtown, this elegant ballroom offers a sophisticated setting for weddings, corporate events, and galas. With its stunning chandeliers and spacious layout, it can accommodate up to 500 guests.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                height: 1.5,
              ),
            ),

            SizedBox(height: 24),

            // Details Row
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Downtown Metropolis',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Capacity',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '500 guests',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Second Details Row
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dimensions',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '100ft x 80ft',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price (per hour)',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$250',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Price per day
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price (per day)',
                  style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                ),
                SizedBox(height: 4),
                Text(
                  '\$2000',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),

            // Amenities Section
            Text(
              'Amenities',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20),

            // Amenities Grid
            Row(
              children: [
                Expanded(child: _buildAmenityItem(Icons.wifi, 'Wi-Fi')),
                SizedBox(width: 8),
                Expanded(
                  child: _buildAmenityItem(Icons.local_parking, 'Parking'),
                ),
                SizedBox(width: 8),
                Expanded(child: _buildAmenityItem(Icons.mic, 'Microphone')),
                SizedBox(width: 8),
                Expanded(
                  child: _buildAmenityItem(Icons.volume_up, 'Sound\nSystem'),
                ),
                SizedBox(width: 8),
                Expanded(child: _buildAmenityItem(Icons.videocam, 'Projector')),
              ],
            ),

            SizedBox(height: 32),

            // Availability Section
            Text(
              'Availability',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20),

            // Calendar
            Row(
              children: [
                Expanded(child: _buildCalendar('July 2024', true)),
                SizedBox(width: 80),
                Expanded(child: _buildCalendar('August 2024', false)),
              ],
            ),

            SizedBox(height: 60),

            // Booking Form Section
            Text(
              'Booking Form',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20),

            // Form Fields
            _buildFormField('Event Type', selectedEventType),
            SizedBox(height: 30),
            _buildFormField('Date', selectedDate),
            SizedBox(height: 30),
            _buildFormField('Time', selectedTime),
            SizedBox(height: 30),
            _buildFormField('Duration', selectedDuration),
            SizedBox(height: 30),

            // Special Requirements
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special Requirements',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 700,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter any special requirements...',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),

            // Proceed to Payment Button
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/hall_booking_booking_summary');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD9C341),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Proceed to Payment',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/hall_booking_imgs/hall_booking_loc.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 60),
              ],
            ),
            _buildReviews(),
          ],
        ),
      ),
    );
  }

  Widget _buildReviews() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(right: 200, top: 75, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Star Rating Distribution
          Column(
            children: [
              _buildRatingRow("5.0", 2823, 1.0),
              const SizedBox(height: 4),
              _buildRatingRow("4.0", 38, 0.15),
              const SizedBox(height: 4),
              _buildRatingRow("3.0", 4, 0.05),
              const SizedBox(height: 4),
              _buildRatingRow("2.0", 0, 0.0),
              const SizedBox(height: 4),
              _buildRatingRow("1.0", 0, 0.0),
            ],
          ),

          const SizedBox(height: 25),

          // Overall Rating Stars
          Row(
            children: List.generate(
              5,
              (index) => const Icon(Icons.star, color: Colors.black, size: 16),
            ),
          ),

          const SizedBox(height: 32),

          // Review 1
          _buildReviewItem(
            "These 45 minutes changed my life – I feel calmer and more in control every day.",
            "July 2, 2020 03:29 PM",
            "DARRELL STEWART",
            "assets/images/profile1.jpg", // Replace with actual asset path
            128,
          ),

          const SizedBox(height: 24),

          // Review 2
          _buildReviewItem(
            "Stress used to rule my day. Now, I handle things with peace and clarity.",
            "July 2, 2020 1:04 PM",
            "DARLENE ROBERTSON",
            "assets/images/profile2.jpg", // Replace with actual asset path
            82,
          ),

          const SizedBox(height: 24),

          // Review 3
          _buildReviewItem(
            "I've tried many apps, but nothing matched the live, personal experience here.",
            "June 26, 2020 10:03 PM",
            "KATHRYN MURPHY",
            "assets/images/profile3.jpg", // Replace with actual asset path
            9,
          ),

          const SizedBox(height: 24),

          // Review 4
          _buildReviewItem(
            "Consistent, soothing, and effective – I'm a different person now.",
            "July 7, 2020 10:14 AM",
            "RONALD RICHARDS",
            "assets/images/profile4.jpg", // Replace with actual asset path
            124,
          ),
        ],
      ),
    );
  }

  Widget _buildRatingRow(String rating, int count, double fillPercentage) {
    return Row(
      children: [
        SizedBox(
          width: 25,
          child: Text(
            rating,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.star, color: Colors.black, size: 14),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(3),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: fillPercentage,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 40,
          child: Text(
            count.toString(),
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReviewItem(
    String reviewText,
    String date,
    String name,
    String profileImage,
    int likes,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Five stars
        Row(
          children: List.generate(
            5,
            (index) => const Icon(Icons.star, color: Colors.black, size: 14),
          ),
        ),

        const SizedBox(height: 12),

        // Review text
        Text(
          reviewText,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
            height: 1.4,
          ),
        ),

        const SizedBox(height: 8),

        // Date
        Text(
          date,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(height: 16),

        // Profile row
        Row(
          children: [
            // Profile image
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage(profileImage),
              onBackgroundImageError: (exception, stackTrace) {
                // Handle image loading error
              },
              child:
                  profileImage.isEmpty
                      ? Icon(Icons.person, size: 16, color: Colors.grey[600])
                      : null,
            ),

            const SizedBox(width: 12),

            // Name
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            // Like button and count
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                  size: 16,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 6),
                Text(
                  likes.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 16),
                Icon(
                  Icons.thumb_down_outlined,
                  size: 16,
                  color: Colors.grey[600],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAmenityItem(IconData icon, String label) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(icon, size: 24, color: Colors.grey[700]),
          SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar(String monthYear, bool isJuly) {
    return Column(
      children: [
        Text(
          monthYear,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16),

        // Day headers
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
              ['S', 'M', 'T', 'W', 'T', 'F', 'S']
                  .map(
                    (day) => Text(
                      day,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                  )
                  .toList(),
        ),

        SizedBox(height: 12),

        // Calendar Grid
        if (isJuly) _buildJulyCalendar() else _buildAugustCalendar(),
      ],
    );
  }

  Widget _buildJulyCalendar() {
    return Column(
      children: [
        // Week 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell(''),
            _buildDateCell('1'),
            _buildDateCell('2'),
            _buildDateCell('3'),
            _buildDateCell('4'),
            _buildDateCell('5', isSelected: true),
            _buildDateCell('6'),
          ],
        ),
        SizedBox(height: 8),
        // Week 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('7'),
            _buildDateCell('8'),
            _buildDateCell('9'),
            _buildDateCell('10'),
            _buildDateCell('11'),
            _buildDateCell('12'),
            _buildDateCell('13'),
          ],
        ),
        SizedBox(height: 8),
        // Week 3
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('14'),
            _buildDateCell('15'),
            _buildDateCell('16'),
            _buildDateCell('17'),
            _buildDateCell('18'),
            _buildDateCell('19'),
            _buildDateCell('20'),
          ],
        ),
        SizedBox(height: 8),
        // Week 4
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('21'),
            _buildDateCell('22'),
            _buildDateCell('23'),
            _buildDateCell('24'),
            _buildDateCell('25'),
            _buildDateCell('26'),
            _buildDateCell('27'),
          ],
        ),
        SizedBox(height: 8),
        // Week 5
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('28'),
            _buildDateCell('29'),
            _buildDateCell('30'),
            _buildDateCell(''),
            _buildDateCell(''),
            _buildDateCell(''),
            _buildDateCell(''),
          ],
        ),
      ],
    );
  }

  Widget _buildAugustCalendar() {
    return Column(
      children: [
        // Week 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell(''),
            _buildDateCell(''),
            _buildDateCell(''),
            _buildDateCell(''),
            _buildDateCell('1'),
            _buildDateCell('2'),
            _buildDateCell('3'),
          ],
        ),
        SizedBox(height: 8),
        // Week 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('4'),
            _buildDateCell('5'),
            _buildDateCell('6'),
            _buildDateCell('7', isSelected: true),
            _buildDateCell('8'),
            _buildDateCell('9'),
            _buildDateCell('10'),
          ],
        ),
        SizedBox(height: 8),
        // Week 3
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('11'),
            _buildDateCell('12'),
            _buildDateCell('13'),
            _buildDateCell('14'),
            _buildDateCell('15'),
            _buildDateCell('16'),
            _buildDateCell('17'),
          ],
        ),
        SizedBox(height: 8),
        // Week 4
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('18'),
            _buildDateCell('19'),
            _buildDateCell('20'),
            _buildDateCell('21'),
            _buildDateCell('22'),
            _buildDateCell('23'),
            _buildDateCell('24'),
          ],
        ),
        SizedBox(height: 8),
        // Week 5
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildDateCell('25'),
            _buildDateCell('26'),
            _buildDateCell('27'),
            _buildDateCell('28'),
            _buildDateCell('29'),
            _buildDateCell('30'),
            _buildDateCell(''),
          ],
        ),
      ],
    );
  }

  Widget _buildDateCell(String date, {bool isSelected = false}) {
    if (date.isEmpty) {
      return Container(width: 32, height: 32);
    }

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFF0D000) : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          date,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.black : Colors.grey[700],
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildFormField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 600,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  color:
                      value.startsWith('Select')
                          ? Colors.grey[400]
                          : Colors.black,
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.grey[400]),
            ],
          ),
        ),
      ],
    );
  }
}
