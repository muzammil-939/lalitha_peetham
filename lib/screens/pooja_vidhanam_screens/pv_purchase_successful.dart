import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvPurchaseSuccessful extends StatefulWidget {
  const PvPurchaseSuccessful({super.key});

  @override
  State<PvPurchaseSuccessful> createState() => _PvPurchaseSuccessfulState();
}

class _PvPurchaseSuccessfulState extends State<PvPurchaseSuccessful> {
  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: const [
                  Text(
                    'Purchase Successful!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Your purchase of 'Advanced Pooja Vidhanam' is complete. You can now access the course materials and join live sessions.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _sectionTitle("Order Summary"),
            _orderSummaryCard(),
            const SizedBox(height: 12),
            _singleFieldCard("Quantity", "1"),
            const SizedBox(height: 12),
            _singleFieldCard("Total", "\$49.99"),
            const SizedBox(height: 24),
            _sectionTitle("Transaction Details"),
            _paymentMethodCard(),
            const SizedBox(height: 12),
            _singleFieldCard("Transaction ID", "1234567890"),
            const SizedBox(height: 24),
            _sectionTitle("Next Steps"),
            _nextStepsCard("Access Course Materials"),
            _nextStepsCard("Join Live Sessions"),
            const SizedBox(height: 32),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4BB26), // Mustard Yellow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  context.go('/cmplt_your_purchase');
                },
                child: const Text(
                  "Go to My Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _orderSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardDecoration(),
      child: Row(
        children: [
          Image.asset(
            'assets/images/pv_mypurchase7.png', // Replace with your asset path
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              "Advanced Pooja Vidhanam",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
Widget _singleFieldCard(String label, String value) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    decoration: _cardDecoration(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    ),
  );
}

Widget _paymentMethodCard() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    decoration: _cardDecoration(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(Icons.credit_card, size: 20),
            SizedBox(width: 8),
            Text(
              "Payment Method",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          "Visa •••• 4242",
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),
  );
}

  Widget _nextStepsCard(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: _cardDecoration(),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Color(0xffFAFAFA),
      borderRadius: BorderRadius.circular(2),
      border: Border.all(color: Color(0xffFAFAFA),),
    );
  }
}
