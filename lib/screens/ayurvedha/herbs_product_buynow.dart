import 'package:flutter/material.dart';

import 'ayurvedh_page_layout.dart';

class CurcuminProductUI extends StatelessWidget {
  const CurcuminProductUI({super.key});

  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 100),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.home, size: 16, color: Colors.black),
                      Text(
                        ' / ',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        'BUY HERBS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' // ',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        'Booking Summary',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 100),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 600,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left side - Product image and Buy Now button
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        // Product image container
                        Container(
                          width: 280,
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/herbs_graps.jpg', // Replace with your image path
                                  width: 200,
                                  height: 250,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Buy Now button
                        Container(
                          width: 280,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFD4AF37), Color(0xFFB8860B)],
                            ),
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 40),

                  // Right side - Product info and booking summary
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product title and rating
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Curcumin Capsules',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '60 Caps',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 16,
                                    );
                                  }),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '₹ 1140',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 40),

                        // Booking Summary
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BOOKING SUMMARY',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 20),

                            // Booking details
                            Column(
                              children: [
                                _buildBookingRow('Name: Ramesh Kumar'),
                                _buildBookingRow(
                                  'Phone Number: +91 98765 43210',
                                ),
                                _buildBookingRow('Event Type: Temple Festival'),
                                _buildBookingRow('Event Date: 24th June 2025'),
                                _buildBookingRow(
                                  'Time Slot: 6:00 AM - 8:00 AM',
                                ),
                                _buildBookingRow(
                                  'Location: Arulmigu Meenakshi Temple, Madurai - 625001',
                                ),
                                _buildBookingRow('Team Required: 5 Artists'),
                                _buildBookingRow('Duration: 2 Hours'),
                                _buildBookingRow('Price: ₹15,000'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookingRow(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 4,
            height: 4,
            margin: EdgeInsets.only(top: 8, right: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
