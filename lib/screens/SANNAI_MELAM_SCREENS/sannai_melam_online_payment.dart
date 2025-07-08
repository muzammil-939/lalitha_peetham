import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SannaiMelamOnlinePayment extends StatefulWidget {
  const SannaiMelamOnlinePayment({super.key});

  @override
  State<SannaiMelamOnlinePayment> createState() =>
      _SannaiMelamOnlinePaymentState();
}

class _SannaiMelamOnlinePaymentState extends State<SannaiMelamOnlinePayment> {
  String _selectedPayment = 'Bank';
  String? _selectedBank;

  final List<String> _banks = [
    'HDFC Bank',
    'ICICI Bank',
    'SBI Bank',
    'Axis Bank',
    'Kotak Bank',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// LEFT SIDE - PAYMENT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(height: 32),
                  const SizedBox(height: 24),
                  const Text(
                    'Pay With:',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: ['Card', 'Bank', 'Transfer'].map((method) {
                      return Row(
                        children: [
                          Radio<String>(
                            value: method,
                            groupValue: _selectedPayment,
                            onChanged: (value) {
                              setState(() {
                                _selectedPayment = value!;
                              });
                            },
                          ),
                          Text(method),
                          const SizedBox(width: 12),
                        ],
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),

                  /// Bank Dropdown
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Choose your bank',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                    ),
                    value: _selectedBank,
                    items: _banks
                        .map((bank) => DropdownMenuItem(
                              value: bank,
                              child: Text(bank),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedBank = value;
                      });
                    },
                  ),
                  const SizedBox(height: 140),

                  /// Pay Button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4BB26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        context.go('/sannai_melam_order_confirm');
                      },
                      child: const Text(
                        'Pay 47,000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  /// Disclaimer
                  const Text(
                    'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 24),      
           Container(
              width: 1,
              height: 600, // Adjust height as needed
              color: Colors.grey[300],
            ),
             const SizedBox(width: 24),
            /// RIGHT SIDE - ORDER SUMMARY
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Order Summary',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(height: 32),
                  const SizedBox(height: 24),

                  /// Order Card
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/sannai_melam_image1.png', // <-- Replace with your image path
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'sri sakthi sannai melam',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Head : Ramesh.k',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '₹15,000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'count : 5',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Divider(height: 32),

                  /// Referral Code
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'earn or referal code',
                            border: OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffACACAC),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))
                          ),
                          child: const Text('Apply'),
                        ),
                      ),
                      
                    ],
                  ),
                  const Divider(height: 32),
                  const SizedBox(height: 24),

                  /// Price Summary
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Subtotal'),
                      Text('₹45,000.00'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Site Charge'),
                      Text('₹1,000.00'),
                    ],
                  ),
                  const Divider(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '47,000.00',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'sri sakthi sannai melam',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
