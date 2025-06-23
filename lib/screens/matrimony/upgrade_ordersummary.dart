import 'package:flutter/material.dart';
import 'dart:ui';

class OrderSummaryDialog extends StatelessWidget {
  const OrderSummaryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          // Blurred background
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),
          // Dialog content
          Center(
            child: Container(
              width: 720,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 25,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header with close button
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 32, 32, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'ORDER SUMMARY',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                            color: Color(0xFFDB9325),
                          ),
                        ),
                        //
                        // GestureDetector(
                        //   onTap: () => Navigator.of(context).pop(),
                        //   child: Container(
                        //     width: 36,
                        //     height: 36,
                        //     decoration: BoxDecoration(
                        //       color: Colors.grey.withOpacity(0.15),
                        //       shape: BoxShape.circle,
                        //     ),
                        //     child: const Icon(
                        //       Icons.close,
                        //       color: Colors.grey,
                        //       size: 20,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  // Order items
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),

                        // Gold Plus item
                        _buildOrderItem(
                          'GOLD PLUS 3 MONTH',
                          '₹4,540',
                          color: const Color(0xFFD4A574),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 20),

                        // Savings
                        _buildOrderItem(
                          'SAVINGS (40% OFF)',
                          '-₹1,840',
                          color: const Color(0xFF4ECDC4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(height: 20),

                        // Extra contacts
                        _buildOrderItem(
                          'ADD 50 EXTRA CONTACT NOS',
                          '₹840',
                          color: const Color(0xFF4ECDC4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(height: 20),

                        // Promote profile
                        _buildOrderItem(
                          'PROMOTE MY PROFILE',
                          '₹339',
                          color: const Color(0xFF4ECDC4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(height: 20),

                        // Contribution
                        _buildOrderItem(
                          'CONTRIBUTE TO LALITHA.ORG',
                          '₹17',
                          color: const Color(0xFF8A8A8A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(height: 28),

                        // Divider
                        Container(height: 1, color: Colors.black54),
                        const SizedBox(height: 28),

                        // Total
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'TOTAL AMOUNT',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.8,
                                color: Color(0xFF8A8A8A),
                              ),
                            ),
                            const Text(
                              '₹2,741',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF8A8A8A),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),

                  // Savings banner
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: const BoxDecoration(color: Color(0xFFF5E6A3)),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Center(
                      child: Text(
                        'You Are Saving ₹1816 On This Order',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD4A574),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 36),

                  // Proceed to pay button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 200),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle proceed to pay
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFB8860B),
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'PROCEED TO PAY',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 36),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem(
    String title,
    String amount, {
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              letterSpacing: 0.3,
              color: color,
              height: 1.2,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          amount,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            color: color,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}

// Function to show the dialog
void showOrderSummaryDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.transparent,
    builder: (context) => const OrderSummaryDialog(),
  );
}
