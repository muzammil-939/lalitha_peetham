import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_layout.dart';

class HallBookingBookingsummary extends StatefulWidget {
  @override
  _HallBookingBookingsummaryState createState() =>
      _HallBookingBookingsummaryState();
}

class _HallBookingBookingsummaryState extends State<HallBookingBookingsummary> {
  String selectedPaymentMethod = 'UPI';
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Breadcrumb
            Row(
              children: [
                Text(
                  'Venues',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                Text(
                  ' / ',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                Text(
                  'Venue Details',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
            SizedBox(height: 32),

            // Title
            Text(
              'Booking Summary',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 32),

            // Hall Name Section
            Text(
              'Hall Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Grand Ballroom',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 24),

            // Date & Time Section
            Text(
              'Date & Time',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Saturday, July 20, 2024, 6:00 PM - 10:00 PM',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 24),

            // Duration Section
            Text(
              'Duration',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '4 hours',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 32),

            // Cost Breakdown Section
            Text(
              'Cost Breakdown',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),

            // Cost Items
            _buildCostItem('Venue Rental', '\$2,000'),
            SizedBox(height: 12),
            _buildCostItem('Service Fee', '\$200'),
            SizedBox(height: 12),
            _buildCostItem('Taxes', '\$150'),
            SizedBox(height: 16),

            // Total
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '\$2,350',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),

            // User Info Section
            Text(
              'User Info',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 24),

            // Name Field
            Text(
              'Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 600,
              height: 50,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.grey[500], fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Email Field
            Text(
              'Email',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 600,
              height: 50,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.grey[500], fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Phone Field
            Text(
              'Phone',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 600,
              height: 50,
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  hintStyle: TextStyle(color: Colors.grey[500], fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),

            // Payment Method Section
            Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),

            // Payment Options
            _buildPaymentOption('UPI'),
            SizedBox(height: 12),
            _buildPaymentOption('Card'),
            SizedBox(height: 12),
            _buildPaymentOption('Net Banking'),
            SizedBox(height: 32),

            // Confirm Button
            Container(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle booking confirmation
                  print('Booking confirmed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD9C341),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Confirm Booking',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
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

  Widget _buildCostItem(String label, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontSize: 16, color: Colors.grey[600])),
        Text(amount, style: TextStyle(fontSize: 16, color: Colors.black)),
      ],
    );
  }

  Widget _buildPaymentOption(String method) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!, width: 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: RadioListTile<String>(
        title: Text(
          method,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        value: method,
        groupValue: selectedPaymentMethod,
        onChanged: (String? value) {
          setState(() {
            selectedPaymentMethod = value!;
          });
        },
        activeColor: Colors.blue,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        dense: true,
      ),
    );
  }
}
