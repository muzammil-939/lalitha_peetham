import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';

class PanditBookingRescheduleConfirmation extends StatefulWidget {
  const PanditBookingRescheduleConfirmation({super.key});

  @override
  State<PanditBookingRescheduleConfirmation> createState() =>
      _PanditBookingRescheduleConfirmationState();
}

class _PanditBookingRescheduleConfirmationState
    extends State<PanditBookingRescheduleConfirmation> {
  @override
  Widget build(BuildContext context) {
    return PalmReadingLayout(
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
                "BOOKING CONFIRMED TRACK YOUR \nPOOJA",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              const Text(
                "Reschedule Confirmation – Pooja Booking",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),

              Container(
                width: 800,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [buildMainCont()],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildMainCont() {
    return Container(
      width: double.infinity,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          // Header message
          Text(
            'Your pooja has been successfully rescheduled. Please check the updated \ndetails below',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.4,
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

          // Main content container
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Updated Booking Details header
              Text(
                'Updated Booking Details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 16),

              // Booking details
              _buildDetailRow('Booking ID: #PND12345'),
              _buildDetailRow('Name: Ravi Kumar'),
              _buildDetailRow('Pooja Type: Satyanarayana Pooja'),
              _buildDetailRow('New Date: 20 June 2025'),
              _buildDetailRow('New Time: 10:00 AM'),
              _buildDetailRow('Location: Habsiguda, Hyderabad'),
              _buildDetailRow('Language Preference: Telugu'),
              _buildDetailRow(
                'Pandit: Will be confirmed 1 day before the pooja',
              ),
              _buildDetailRow('Package: With Samagri'),
              _buildDetailRow(
                'Payment Status: ₹500 Advance Paid | ₹3,000 Pending',
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  height: 1.5,
                  color: Colors.white,
                  width: double.infinity,
                ),
              ),
              // Support Contact section
              Text(
                'Support Contact',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 12),

              Text(
                'If you have any further changes or questions, feel free to contact us:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 8),

              Row(
                children: [
                  Text('📱 ', style: TextStyle(fontSize: 16)),
                  Text(
                    'WhatsApp/Call: +91-XXXXXXXXXX',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),

              Row(
                children: [
                  Text('📧 ', style: TextStyle(fontSize: 16)),
                  Text(
                    'Email: bookings@yourpoojaservice.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),

              Row(
                children: [
                  Text('🙏 ', style: TextStyle(fontSize: 16)),
                  Text(
                    'Thank you for choosing our service!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Container(
              height: 1.5,
              color: Colors.white,
              width: double.infinity,
            ),
          ),
          // Confirmation message
          Text(
            'A Confirmation Message Has Been Sent To Your Email And \nWhatsApp With All Puja Details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
          SizedBox(height: 30),

          // Action buttons
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 24),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                        foregroundColor: Colors.black87,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Text(
                        'Download Details',
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
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/pandit_booking_home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Text(
                        'Home',
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
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
      ),
    );
  }
}
