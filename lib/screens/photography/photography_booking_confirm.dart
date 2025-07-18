import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img2.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographyBookingConfirm extends StatelessWidget {
  const PhotographyBookingConfirm({super.key});

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
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF6B8E4E), // Olive green background
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    const Text(
                      'Booking Confirmed – Thank You!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Subtitle
                    const Text(
                      'We\'re thrilled to be capturing your special moments. Here are your booking details:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Event Date
                    const Text(
                      'Event Date: June 10th',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Details with icons
                    _buildDetailRow('⏰', 'Coverage Time:', '13 Hours'),
                    const SizedBox(height: 12),
                    _buildDetailRow('👤', 'Client Name:', 'Sriram'),
                    const SizedBox(height: 12),
                    _buildDetailRow('📦', 'Event type:', 'Wedding'),
                    const SizedBox(height: 12),
                    _buildDetailRow('📍', 'Event Location:', 'Hyderabad'),
                    const SizedBox(height: 12),
                    _buildDetailRow(
                      '💲',
                      'Payment Status:',
                      'Confirmed / Advance Paid',
                    ),
                    const SizedBox(height: 12),
                    _buildDetailRow(
                      '🖼️',
                      'Photos Delivered in Highest Quality',
                      '',
                    ),
                    const SizedBox(height: 12),
                    _buildDetailRow('🎬', 'Cinematic Wedding Movie', ''),
                    const SizedBox(height: 32),

                    // Payment Details Section
                    Row(
                      children: [
                        const Text('🧾', style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 8),
                        const Text(
                          'Payment Details:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Payment details list
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildPaymentDetail('Transaction ID: [#1234567890]'),
                          _buildPaymentDetail('Amount Paid: ₹[Amount]'),
                          _buildPaymentDetail(
                            'Payment Method: [e.g., UPI / Card / Net Banking]',
                          ),
                          _buildPaymentDetail(
                            'Date & Time: [DD/MM/YYYY, HH:MM AM/PM]',
                          ),
                          Row(
                            children: [
                              const Text(
                                'Status: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const Text('✅', style: TextStyle(fontSize: 16)),
                              const SizedBox(width: 4),
                              const Text(
                                'Successful',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Next Steps Section
                    Row(
                      children: [
                        const Text('📋', style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 8),
                        const Text(
                          'Next Steps:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Next steps list
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildNextStep(
                            'You\'ll receive a confirmation email shortly.',
                          ),
                          _buildNextStep(
                            'Our team will contact you within 12–24 hours for planning.',
                          ),
                          _buildNextStep(
                            'Final shoot schedule and preferences will be discussed on the call.',
                          ),
                        ],
                      ),
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

  Widget _buildDetailRow(String icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(icon, style: const TextStyle(fontSize: 16)),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                height: 1.4,
              ),
              children: [
                TextSpan(
                  text: label,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                if (value.isNotEmpty) ...[
                  const TextSpan(text: ' '),
                  TextSpan(text: value),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentDetail(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNextStep(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
