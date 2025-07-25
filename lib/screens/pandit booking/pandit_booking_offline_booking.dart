import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingOfflineBooking extends StatefulWidget {
  const PanditBookingOfflineBooking({super.key});

  @override
  State<PanditBookingOfflineBooking> createState() =>
      _PanditBookingOfflineBookingState();
}

class _PanditBookingOfflineBookingState
    extends State<PanditBookingOfflineBooking> {
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
                "CALL US TO BOOK PANDIT FOR ANY POOJA",
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
                "Contact Us for Offline Booking",
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
                  children: [_buildMaincont()],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMaincont() {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: screenHeight * 1.2,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Header Title
          const Text(
            'Offline Pandit Booking Available – Speak to Our Team Today!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 24),

          // Contact Information Card
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Phone/WhatsApp Row
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        color: Color(0xFF25D366), // WhatsApp green
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Call / WhatsApp  :  +91-XXXXXXXXXX',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Email Row
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4285F4), // Gmail blue
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: const Center(
                        child: Text(
                          'M',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Email (Optional)  :  ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'bookings@yourpoojaservice.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFD4AF37),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Service Hours Row
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4285F4),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.access_time,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Service Hours:     :  800 AM – 9:00 PM | All Days',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          // How Offline Booking Works Section
          const Text(
            'How Offline Booking Works:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 20),

          // Numbered Steps
          _buildNumberedStep(
            '1.',
            'Call or Message Us with your puja type, location, date, and language preference.',
          ),

          const SizedBox(height: 12),

          _buildNumberedStep(
            '2.',
            'Our Team Confirms Availability and helps you choose the right package (with or without samagri).',
          ),

          const SizedBox(height: 12),

          _buildNumberedStep(
            '3.',
            'Pay Advance (Optional) to confirm your slot.',
          ),

          const SizedBox(height: 12),

          _buildNumberedStep(
            '4.',
            'Receive Booking Confirmation via WhatsApp/SMS.',
          ),

          const SizedBox(height: 12),

          _buildNumberedStep(
            '5.',
            'Pandit Arrives at Your Location as scheduled with all details.',
          ),

          const SizedBox(height: 40),

          // Why Book Offline Section
          const Text(
            'Why Book Offline?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 20),

          // Bullet Points
          _buildBulletPoint('Speak directly with our team'),
          const SizedBox(height: 8),
          _buildBulletPoint('Personalized assistance'),
          const SizedBox(height: 8),
          _buildBulletPoint('Easy for elders or non-digital users'),
          const SizedBox(height: 8),
          _buildBulletPoint('Immediate confirmation & guidance'),
        ],
      ),
    );
  }

  Widget _buildNumberedStep(String number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 8),
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(top: 8),
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
