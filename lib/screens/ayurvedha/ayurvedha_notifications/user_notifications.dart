import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_notifications/ayurvedha_noti_layout.dart';

class UserNotifications extends StatefulWidget {
  const UserNotifications({super.key});

  @override
  State<UserNotifications> createState() => _UserNotificationsState();
}

class _UserNotificationsState extends State<UserNotifications> {
    DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return AyurvedhaNotiLayout(
      child: Container(
        color: Colors.grey[100],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with Home Icon and User/Vendor Toggle
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.home, color: Colors.black),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.yellow[600],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'User',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Vendor',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
  // Search Bar and Calendar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Services',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 16),
                              suffixIcon: Icon(Icons.search, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: () async {
                          DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                          );
                          if (picked != null) {
                            setState(() {
                              selectedDate = picked;
                            });
                          }
                        },
                        child: Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.calendar_today, color: Colors.grey, size: 18),
                              SizedBox(width: 8),
                              Text(
                                'Select Date',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

           SizedBox(height: 16,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 80),
             child: Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Booking Notification + Calendar
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Today / Your Booking Notifications',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 50),
                                
                                
                                // Ayurveda Consultation Card
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[100],
                                    borderRadius: BorderRadius.circular(0),
                                    border: Border.all(color: Colors.yellow[300]!),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'AYURVEDA CONSULTATION ',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            '(BOOKING CONFIRMED)',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.yellow[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Your Appointment With Dr.Meenakshi ( BAMS ) Is On June 20, 11:00 AM Via Video Call',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_today, size: 16, color: Colors.grey[600]),
                                          const SizedBox(width: 6),
                                          Text(
                                            '10 June, 10 : 12 AM  Via Video Call',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Icon(Icons.visibility, size: 16, color: Colors.grey[600]),
                                          const SizedBox(width: 6),
                                          Text(
                                            'View Details',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600],
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                
                                const SizedBox(height: 50),
                                
                                // Order Confirmation
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                                        children: [
                                          const TextSpan(
                                            text: 'YOUR ORDER # ',
                                            style: TextStyle(fontWeight: FontWeight.w600),
                                          ),
                                          const TextSpan(
                                            text: 'MED12345 FOR ',
                                            style: TextStyle(fontWeight: FontWeight.w600),
                                          ),
                                          TextSpan(
                                            text: '"ASHWAGANDHA CAPSULES" ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.yellow[700],
                                            ),
                                          ),
                                          const TextSpan(
                                            text: 'HAS BEEN CONFIRMED.',
                                            style: TextStyle(fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Your Appointment With Dr.Meenakshi ( BAMS ) Is On June 20, 11:00 AM Via Video Call',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today, size: 16, color: Colors.grey[600]),
                                        const SizedBox(width: 6),
                                        Text(
                                          '10 June 2025, 10 : 15 Am',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(Icons.visibility, size: 16, color: Colors.grey[600]),
                                        const SizedBox(width: 6),
                                        Text(
                                          'View Details',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                         
                        ],
                      ),
                      
                      const SizedBox(height: 16),
                      
                      const Divider(height: 1, color: Colors.grey), // ✅ Added Divider Above "View More"
             
                      // View More button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'View More',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down, color: Colors.grey[600]),
                        ],
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Services List
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            _buildServiceItem('ASTROLOGY', true),
                            _buildServiceItem('PANDIT BOOKING', true),
                            _buildServiceItem('ONLINE POOJA', true),
                            _buildServiceItem('GEMSTONE SELLING', true),
                            _buildServiceItem('ONLINE MUHURTHAS', true),
                            _buildServiceItem('REFERAL AND EVEN', true),
                            _buildServiceItem('MATRIMONY', false),
                            _buildServiceItem('REAL ESTATE', false),
                            _buildServiceItem('POOJA VIDHANAM CLASS', false),
                            _buildServiceItem('CATERING', false),
                            _buildServiceItem('PHOTOGRAPHY', false),
                            _buildServiceItem('FLOWER DECORATION', false),
                            _buildServiceItem('SANNAIMELAM', false),
                            _buildServiceItem('FUNCTION HALL BOOKING', false),
                            _buildServiceItem('EVENT MANAGEMENT', false),
                            _buildServiceItem('NITHYA POOJA SUBSCRIPTION', false),
                            _buildServiceItem('ONLINE VASTHU PROPERTY PLANING', false),
                            _buildServiceItem('YOGA CLASSES CONDUCTING', false),
                            _buildServiceItem('AYURVEDHA CONSULTANCY', false, isLast: true),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
           ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildCalendarGrid() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCalendarDay('', false),
            _buildCalendarDay('1', false),
            _buildCalendarDay('2', false),
            _buildCalendarDay('3', false),
            _buildCalendarDay('4', false),
            _buildCalendarDay('5', false),
            _buildCalendarDay('6', false),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCalendarDay('7', false),
            _buildCalendarDay('8', false),
            _buildCalendarDay('9', false),
            _buildCalendarDay('10', false),
            _buildCalendarDay('11', false),
            _buildCalendarDay('12', false),
            _buildCalendarDay('13', false),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCalendarDay('14', false),
            _buildCalendarDay('15', false),
            _buildCalendarDay('16', false),
            _buildCalendarDay('17', false),
            _buildCalendarDay('18', false),
            _buildCalendarDay('19', true),
            _buildCalendarDay('20', false),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCalendarDay('21', false),
            _buildCalendarDay('22', false),
            _buildCalendarDay('23', false),
            _buildCalendarDay('24', false),
            _buildCalendarDay('25', false),
            _buildCalendarDay('26', false),
            _buildCalendarDay('27', false),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCalendarDay('28', false),
            _buildCalendarDay('29', false),
            _buildCalendarDay('30', false),
            _buildCalendarDay('31', false),
            _buildCalendarDay('', false),
            _buildCalendarDay('', false),
            _buildCalendarDay('', false),
          ],
        ),
      ],
    );
  }
  
  Widget _buildCalendarDay(String day, bool isSelected) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            fontSize: 11,
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
  
Widget _buildServiceItem(String title, bool hasRedDot, {bool isLast = false}) {
  return Column(
    children: [
      Container(
        color: Colors.yellow[50],
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // Title on the left
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),

                   // Dot in the middle
        Expanded(
          flex: 5,
          child: Center(
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: hasRedDot ? Colors.red : Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),

            // Chevron icon
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),

      // Real Divider between items
      if (!isLast)
        const Divider(
          height: 1,
          color: Color(0xFFE0E0E0), // light grey like in your image
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
    ],
  );
}

}