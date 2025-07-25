import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class HallBookingVenues extends StatefulWidget {
  @override
  _HallBookingVenuesState createState() => _HallBookingVenuesState();
}

class _HallBookingVenuesState extends State<HallBookingVenues> {
  int selectedTab = 0;
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main heading
            Text(
              'Find the perfect venue for your event',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.2,
              ),
            ),

            SizedBox(height: 40),

            // Tab navigation
            Row(
              children: [
                _buildTab('Marriage Halls', 0),
                SizedBox(width: 32),
                _buildTab('Puberty Halls', 1),
                SizedBox(width: 32),
                _buildTab('Birthday Halls', 2),
              ],
            ),

            SizedBox(height: 48),

            // Venue cards grid
            Row(
              children: [
                Expanded(child: _buildVenueCard('Elegant Ballroom')),
                SizedBox(width: 24),
                Expanded(child: _buildVenueCard('Garden Venue')),
                SizedBox(width: 24),
                Expanded(child: _buildVenueCard('Modern Loft')),
                SizedBox(width: 24),
                Expanded(child: _buildVenueCard('Rustic Barn')),
              ],
            ),

            SizedBox(height: 48),

            // Pagination
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPaginationButton('<', false),
                SizedBox(width: 16),
                _buildPaginationNumber(1, true),
                SizedBox(width: 16),
                _buildPaginationNumber(2, false),
                SizedBox(width: 16),
                _buildPaginationNumber(3, false),
                SizedBox(width: 16),
                _buildPaginationNumber(4, false),
                SizedBox(width: 16),
                _buildPaginationNumber(5, false),
                SizedBox(width: 16),
                _buildPaginationButton('>', false),
              ],
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    bool isSelected = selectedTab == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected ? Colors.black : Colors.grey[600],
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 2,
            width: title.length * 8.0,
            color: isSelected ? Colors.black : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _buildVenueCard(String title) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/hall_booking_imgs/hall_booking_5.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaginationNumber(int number, bool isActive) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPage = number;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: isActive ? Colors.grey[300] : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaginationButton(String icon, bool isEnabled) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          icon,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isEnabled ? Colors.black : Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
