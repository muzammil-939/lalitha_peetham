import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';

import '../photography/photography_faq_support_wid.dart';

class PalmReadingPaymentStatus extends StatefulWidget {
  const PalmReadingPaymentStatus({super.key});

  @override
  State<PalmReadingPaymentStatus> createState() =>
      _PalmReadingPaymentStatusState();
}

class _PalmReadingPaymentStatusState extends State<PalmReadingPaymentStatus> {
  @override
  Widget build(BuildContext context) {
    return PalmReadingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),

            buildVastuBookingEnquiryFormPage(context),
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
              'assets/images/vastupooja18.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildVastuBookingEnquiryFormPage(BuildContext context) {
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
                "View Your Payment Details,",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildNavButton("My Bookings"),
                    SizedBox(width: 12),
                    _buildNavButton("Payments", isActive: true),
                    SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        context.go('/palm_reading_faq_support');
                      },
                      child: _buildNavButton("support"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 60),
              Container(
                width: 900,
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(color: const Color(0xFFFFDD66)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBookingSummaryCard(),
                    SizedBox(height: 40),
                    _buildBookingSummaryCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBookingSummaryCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Palm image container
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                color: Colors.grey.shade200,
                child: const Center(
                  child: Icon(Icons.pan_tool, size: 60, color: Colors.grey),
                ),
              ),
            ),
          ),

          const SizedBox(width: 20), // Space between image and content
          // Booking details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Text(
                  'Booking Summary',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 16),

                // Booking details list
                _buildDetailItem('Name: Karthik'),
                const SizedBox(height: 8),

                _buildDetailItem('Service: Palm Reading'),
                const SizedBox(height: 8),

                _buildDetailItem('Mode: Auto-Generated Report'),
                const SizedBox(height: 8),

                _buildDetailItem('Package Selected: Basic Palm Insight'),
                const SizedBox(height: 8),

                _buildStatusItem('Palm Image Status:', 'Received', true),
                const SizedBox(height: 8),

                _buildStatusItem('Payment Status:', 'Confirmed', true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String text) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: const BoxDecoration(
            color: Colors.black87,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatusItem(String label, String status, bool isConfirmed) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: const BoxDecoration(
            color: Colors.black87,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            height: 1.3,
          ),
        ),
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: isConfirmed ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(2),
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 12),
        ),
        const SizedBox(width: 4),
        Text(
          status,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            height: 1.3,
          ),
        ),
      ],
    );
  }

  Widget _buildNavButton(String text, {bool isActive = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
