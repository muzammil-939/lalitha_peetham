import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class CompleteYourPurchase extends StatefulWidget {
  const CompleteYourPurchase({super.key});

  @override
  State<CompleteYourPurchase> createState() => _CompleteYourPurchaseState();
}

class _CompleteYourPurchaseState extends State<CompleteYourPurchase> {
  int selectedPaymentMethod = 0;
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Center(
              child: Column(
                children: [
                  Text(
                    'Complete Your Purchase',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Your purchase is secure and encrypted',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            const Text(
              'Order Summary',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Order Summary Rows
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Course Fee', style: TextStyle(color: Colors.grey)),
                    Text('\$99.99'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Discount', style: TextStyle(color: Colors.grey)),
                    Text('-\$10.00'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('\$89.99', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            const Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Payment Methods
            Column(
              children: List.generate(3, (index) {
                final titles = ['Credit/Debit Card', 'Digital Wallet', 'Net Banking'];
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedPaymentMethod = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: selectedPaymentMethod == index ? Colors.blue[50] : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selectedPaymentMethod == index ? Colors.blue : Colors.grey[300]!,
                        width: selectedPaymentMethod == index ? 2 : 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Radio<int>(
                          value: index,
                          groupValue: selectedPaymentMethod,
                          onChanged: (value) {
                            setState(() {
                              selectedPaymentMethod = value!;
                            });
                          },
                        ),
                        Text(
                          titles[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 30),

            if (selectedPaymentMethod == 0) ...[
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Card Number',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
                buildTextField(cardNumberController, 'Enter card number'),

                const SizedBox(height: 16),

                const Text('Expiry Date and CVV',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
                Row(
                  children: [
                    // Expiry Date
                    SizedBox(
                      width: 180,
                      child: buildTextField(expiryDateController, 'MM/YY'),
                    ),
                    const SizedBox(width: 16),

                    // CVV
                    SizedBox(
                      width: 180,
                      child: buildTextField(cvvController, 'CVV'),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                const Text('Name on Card',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
                buildTextField(nameController, 'Enter name'),

                const SizedBox(height: 30),

                SizedBox(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffD4BB26),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Add payment logic
                    },
                    child: const Text(
                      'Complete Payment',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),
          ],
          ]
        ),
      ),
    );
  }

  Widget buildLabel(String label) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget buildTextField(
  TextEditingController controller,
  String hintText, {
  bool obscureText = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8),
    child: Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 400, // ✅ Constrain input width
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    ),
  );
}

  @override
  void dispose() {
    cardNumberController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();
    nameController.dispose();
    super.dispose();
  }
}
