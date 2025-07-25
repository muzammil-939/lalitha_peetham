import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_layout.dart';

class HallBookingMyBookings extends StatelessWidget {
  const HallBookingMyBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'My Bookings',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 32.0),

            // Tab Bar
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  ),
                  child: Text(
                    'Upcoming',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 32.0),
                Text(
                  'Past',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            SizedBox(height: 48.0),

            // Upcoming Bookings Section
            Text(
              'Upcoming Bookings',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 24.0),

            // Upcoming Booking Card
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Booking ID: 123456',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Grand Ballroom',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Date: July 15, 2024 · Time: 6:00 PM - 11:00 PM',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1.0,
                          ),
                        ),
                        child: Text(
                          'View Details',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 24.0),
                Container(
                  width: 200.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/hall_booking_imgs/hall_booking_1.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 64.0),

            // Past Bookings Section
            Text(
              'Past Bookings',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 24.0),

            // Past Booking Card
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Booking ID: 789012',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Conference Room A',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Date: June 20, 2024 · Time: 9:00 AM - 5:00 PM',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1.0,
                          ),
                        ),
                        child: Text(
                          'View Details',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 24.0),
                Container(
                  width: 200.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/hall_booking_imgs/hall_booking_2.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 64.0),

            // Booking Options Section
            Text(
              'Booking Options',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 24.0),

            // Cancel Booking Option
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cancel Booking',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(Icons.close, size: 20.0, color: Colors.black),
              ],
            ),
            SizedBox(height: 32.0),

            // Download Invoice Option
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Download Invoice',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(Icons.download, size: 20.0, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
