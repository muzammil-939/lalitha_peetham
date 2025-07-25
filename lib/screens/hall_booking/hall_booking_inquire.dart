import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class HallBookingInquire extends StatefulWidget {
  @override
  _HallBookingInquireState createState() => _HallBookingInquireState();
}

class _HallBookingInquireState extends State<HallBookingInquire> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _inquiryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HallBookingLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Center(
              child: Text(
                'Inquire about our event space',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D3748),
                  letterSpacing: -0.5,
                ),
              ),
            ),

            SizedBox(height: 48),

            // Your Name Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2D3748),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFE2E8F0), width: 1),
                  ),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                        color: Color(0xFF9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    style: TextStyle(fontSize: 16, color: Color(0xFF2D3748)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            // Email Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2D3748),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFE2E8F0), width: 1),
                  ),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: Color(0xFF9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    style: TextStyle(fontSize: 16, color: Color(0xFF2D3748)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            // Phone Number Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2D3748),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFE2E8F0), width: 1),
                  ),
                  child: TextField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(
                        color: Color(0xFF9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    style: TextStyle(fontSize: 16, color: Color(0xFF2D3748)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            // Address Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2D3748),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFE2E8F0), width: 1),
                  ),
                  child: TextField(
                    controller: _addressController,
                    decoration: InputDecoration(
                      hintText: 'Enter your address',
                      hintStyle: TextStyle(
                        color: Color(0xFF9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    style: TextStyle(fontSize: 16, color: Color(0xFF2D3748)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            // Inquiry Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Inquiry',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2D3748),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 700,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFE2E8F0), width: 1),
                  ),
                  child: TextField(
                    controller: _inquiryController,
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    style: TextStyle(fontSize: 16, color: Color(0xFF2D3748)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),

            // Submit Button
            Container(
              width: 700,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission
                  print('Form submitted');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFDBE8F2),
                  foregroundColor: Color(0xFF000000),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Submit Inquiry',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            SizedBox(height: 80),

            // Contact Information Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2D3748),
                    height: 1.4,
                  ),
                ),

                SizedBox(height: 16),

                Text(
                  'Phone: (555) 123-4567',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4A5568),
                    height: 1.5,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Email: events@eventspace.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4A5568),
                    height: 1.5,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Address: 123 Main Street, Anytown, USA',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4A5568),
                    height: 1.5,
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),

            // Black Container (Map placeholder)
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/hall_booking_imgs/hall_booking_loc.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
