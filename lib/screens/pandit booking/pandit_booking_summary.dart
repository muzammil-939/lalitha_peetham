import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingSummary extends StatefulWidget {
  const PanditBookingSummary({super.key});

  @override
  State<PanditBookingSummary> createState() => _PanditBookingSummaryState();
}

class _PanditBookingSummaryState extends State<PanditBookingSummary> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildVastuBookingEnquiryFormPage(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildherosection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "Personalized Palm Reading by Experts",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/pandit_booking_home',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildVastuBookingEnquiryFormPage() {
    return Stack(
      children: [
        // 🌄 Full Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),

        // 🌑 Planet Image (top-right)
        Positioned(
          top: 100,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 80,
            width: 80,
          ),
        ),

        // 🌟 Foreground Content
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              const Text(
                "Your Booking Summary",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),

              // Fixed Form Container
              Container(
                width: 800,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color(0xFFE6C547),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Main booking details section
                          _buildInfoText('Name: Ravi Kumar'),
                          SizedBox(height: 8),
                          _buildInfoText('Mobile: +91 9876543210'),
                          SizedBox(height: 8),
                          _buildInfoText('Puja Type: Satyanarayana Puja'),
                          SizedBox(height: 8),
                          _buildInfoText('Purpose: Housewarming Ceremony'),
                          SizedBox(height: 8),
                          _buildInfoText('Date & Time: 15 June 2025, 9:00 AM'),
                          SizedBox(height: 8),
                          _buildInfoText('Location: Habsiguda, Hyderabad'),
                          SizedBox(height: 8),
                          _buildInfoText('Preferred Language: Telugu'),
                          SizedBox(height: 8),
                          _buildInfoText(
                            'Materials Required: Yes (Pandit will bring puja samagri)',
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: Container(
                              height: 1.5,
                              color: Colors.white,
                              width: double.infinity,
                            ),
                          ),
                          // Assigned Pandit Details section
                          Text(
                            'Assigned Pandit Details',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 16),

                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildBulletPoint(
                                  'Pandit Name: Pandit Sharmaji',
                                ),
                                SizedBox(height: 8),
                                _buildBulletPoint(
                                  'Contact Number: +91 91234 56789',
                                ),
                                SizedBox(height: 8),
                                _buildBulletPoint('Language: Telugu'),
                                SizedBox(height: 8),
                                _buildBulletPoint(
                                  'Experience: 10+ Years in Vedic Pujas',
                                ),
                                SizedBox(height: 8),
                                _buildBulletPoint(
                                  'Samagri Included: Yes (extra charge may apply)',
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: Container(
                              height: 1.5,
                              color: Colors.white,
                              width: double.infinity,
                            ),
                          ),

                          // Payment Summary section
                          Text(
                            'Payment Summary',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 16),

                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildBulletPoint('Pandit Service Fee: ₹1400'),
                                SizedBox(height: 8),
                                _buildBulletPoint('Samagri Cost: ₹600'),
                                SizedBox(height: 8),
                                _buildBulletPoint('Total Cost: ₹2000'),
                                SizedBox(height: 8),
                                _buildBulletPoint('Advance to Pay Now: ₹500'),
                                SizedBox(height: 8),
                                _buildBulletPoint(
                                  'Remaining Amount on Puja Day: ₹1500',
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 60),

                          // Buttons section
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Back button action
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[400],
                                      foregroundColor: Colors.black87,
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    child: Text(
                                      'Back',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.go(
                                        '/pandit_booking_booking_confirmed',
                                      );
                                      // Send request button action
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black87,
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    child: Text(
                                      'Send Request',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        height: 1.4,
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 6,
          height: 6,
          margin: EdgeInsets.only(top: 8, right: 8),
          decoration: BoxDecoration(
            color: Colors.black87,
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
