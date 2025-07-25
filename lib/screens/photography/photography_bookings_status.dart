import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img2.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographyBookingsStatus extends StatefulWidget {
  const PhotographyBookingsStatus({super.key});

  @override
  State<PhotographyBookingsStatus> createState() =>
      _PhotographyBookingsStatusState();
}

class _PhotographyBookingsStatusState extends State<PhotographyBookingsStatus> {
  @override
  Widget build(BuildContext context) {
    return PhotographyLayout(
      child: Column(
        children: [
          PhotographyHeroImg2(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFF6B8E4B)),
              padding: EdgeInsets.all(80),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top navigation buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap:
                              () => context.go('/Photography_Bookings_Status'),
                          child: _buildNavButton("My Bookings", isActive: true),
                        ),
                        SizedBox(width: 12),
                        GestureDetector(
                          onTap:
                              () => context.go('/photography_paymentsStatus'),
                          child: _buildNavButton("Payments"),
                        ),
                        SizedBox(width: 12),
                        GestureDetector(
                          onTap: () => context.go('/photography_faq_support'),
                          child: _buildNavButton("support"),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),

                    // Tab navigation
                    Row(
                      children: [
                        _buildTabButton("Upcoming Bookings", isActive: true),
                        SizedBox(width: 30),
                        _buildTabButton("past bookings"),
                        SizedBox(width: 30),
                        _buildTabButton("cancelled bookings"),
                      ],
                    ),
                    SizedBox(height: 40),

                    // Booking cards - FIXED: Removed Expanded, using Column instead
                    Column(
                      children: [
                        _buildBookingCard(),
                        SizedBox(height: 20),
                        _buildBookingCard(),
                        SizedBox(height: 20),
                        _buildBookingCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          PhotographyFaqWid(),
        ],
      ),
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

  Widget _buildTabButton(String text, {bool isActive = false}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        decoration: isActive ? TextDecoration.underline : TextDecoration.none,
        decorationColor: Colors.white,
        decorationThickness: 2,
      ),
    );
  }

  Widget _buildBookingCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Wedding ceremony image
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/flower_deco_2.png',
                ), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),

          // Booking details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailRow("Client Name", "Naresh Duggirala"),
                SizedBox(height: 8),
                _buildDetailRow("Service Type", "Wedding Photography"),
                SizedBox(height: 8),
                _buildDetailRow("Date & Time", "15 June 2025,"),
                SizedBox(height: 8),
                _buildDetailRow("Location", "Lakshmi Gardens, Hyderabad"),
                SizedBox(height: 8),
                _buildDetailRow("Package Name", "Premium Package"),
              ],
            ),
          ),

          // Payment and status info
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xFFF5C761), // Yellow color for advance paid
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Advance Paid: ₹5,000",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Color(
                    0x59FF4031,
                  ), // Light red/pink color for due amount
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Due Amount: ₹ 20,000",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  context.go('/photography_SubsPackages');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFF71B023), // Green color for confirmed
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "Confirmed",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$label  ",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ": $value",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
