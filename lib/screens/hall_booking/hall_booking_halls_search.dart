import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class HallBookingHallsSearch extends StatefulWidget {
  @override
  _HallBookingHallsSearchState createState() => _HallBookingHallsSearchState();
}

class _HallBookingHallsSearchState extends State<HallBookingHallsSearch> {
  double _currentPriceRange = 500;
  double _currentSeatingCapacity = 50;
  bool _acSelected = false;
  bool _projectorSelected = false;
  bool _parkingSelected = false;
  bool _cateringSelected = false;
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Sidebar - Filters
            Container(
              width: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    'Filters',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 32),

                  // Search Box
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),

                  // Price Range
                  Text(
                    'Price Range',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.black,
                      inactiveTrackColor: Colors.grey.shade300,
                      thumbColor: Colors.black,
                      overlayColor: Colors.black.withOpacity(0.1),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
                      trackHeight: 4,
                    ),
                    child: Slider(
                      value: _currentPriceRange,
                      min: 0,
                      max: 1000,
                      onChanged: (value) {
                        setState(() {
                          _currentPriceRange = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 40),

                  // Seating Capacity
                  Text(
                    'Seating Capacity',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        '50',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
                            inactiveTrackColor: Colors.grey.shade300,
                            thumbColor: Colors.black,
                            overlayColor: Colors.black.withOpacity(0.1),
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 8,
                            ),
                            trackHeight: 4,
                          ),
                          child: Slider(
                            value: _currentSeatingCapacity,
                            min: 10,
                            max: 200,
                            onChanged: (value) {
                              setState(() {
                                _currentSeatingCapacity = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),

                  // Amenities
                  Text(
                    'Amenities',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Amenity Checkboxes
                  _buildAmenityCheckbox(
                    'AC',
                    _acSelected,
                    (value) => setState(() => _acSelected = value!),
                  ),
                  SizedBox(height: 16),
                  _buildAmenityCheckbox(
                    'Projector',
                    _projectorSelected,
                    (value) => setState(() => _projectorSelected = value!),
                  ),
                  SizedBox(height: 16),
                  _buildAmenityCheckbox(
                    'Parking',
                    _parkingSelected,
                    (value) => setState(() => _parkingSelected = value!),
                  ),
                  SizedBox(height: 16),
                  _buildAmenityCheckbox(
                    'Catering',
                    _cateringSelected,
                    (value) => setState(() => _cateringSelected = value!),
                  ),
                ],
              ),
            ),

            SizedBox(width: 48),

            // Right Content Area
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Page Title
                  Text(
                    'Event Halls/ Result Page Page',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 40),

                  // Event Hall Cards Grid
                  Row(
                    children: [
                      Expanded(
                        child: _buildEventHallCard(
                          'Grand Ballroom',
                          '\$500/hour',
                          'Capacity: 100',
                        ),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: _buildEventHallCard(
                          'The Emerald Room',
                          '\$300/hour',
                          'Capacity: 50',
                        ),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: _buildEventHallCard(
                          'The Sapphire Hall',
                          '\$700/hour',
                          'Capacity: 150',
                        ),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: _buildEventHallCard(
                          'The Ruby Suite',
                          '\$400/hour',
                          'Capacity: 80',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Pagination
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPaginationButton('1', true),
                      SizedBox(width: 12),
                      _buildPaginationButton('2', false),
                      SizedBox(width: 12),
                      _buildPaginationButton('3', false),
                      SizedBox(width: 12),
                      _buildPaginationButton('4', false),
                      SizedBox(width: 12),
                      _buildPaginationButton('5', false),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAmenityCheckbox(
    String title,
    bool value,
    Function(bool?) onChanged,
  ) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: 1.5),
            borderRadius: BorderRadius.circular(3),
            color: value ? Colors.black : Colors.white,
          ),
          child:
              value ? Icon(Icons.check, color: Colors.white, size: 14) : null,
        ),
        SizedBox(width: 12),
        GestureDetector(
          onTap: () => onChanged(!value),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _buildEventHallCard(String title, String price, String capacity) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => context.go('/hall_booking_book_hall'),
          child: Container(
            height: 180,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/hall_booking_imgs/hall_booking_3.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text(
              price,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
            Text(
              ' · ',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
            Text(
              capacity,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPaginationButton(String number, bool isActive) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: isActive ? null : Border.all(color: Colors.grey.shade300),
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isActive ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
