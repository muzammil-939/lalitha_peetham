import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';

class PalmReadingConfirmPay extends StatefulWidget {
  const PalmReadingConfirmPay({super.key});

  @override
  State<PalmReadingConfirmPay> createState() => _PalmReadingConfirmPayState();
}

class _PalmReadingConfirmPayState extends State<PalmReadingConfirmPay> {
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
                "Confirm Your Details & Pay Now",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),

              Container(
                width: 800,
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Progress indicator
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80),
                      child: Row(
                        children: [
                          // Step 1
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color(0xFF6B8E4B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          // Line to step 2
                          Expanded(
                            child: Container(
                              height: 2,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                          // Step 2
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          // Line to step 3
                          Expanded(
                            child: Container(
                              height: 2,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                          // Step 3
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          // Line to step 4
                          Expanded(
                            child: Container(
                              height: 2,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                          // Step 4
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    _buildExpertCard(),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildInput("Consultation Mode", "Call"),
                        buildInput("Time", "40 minutes"),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(children: [buildInput("Price", "299")]),
                    const SizedBox(height: 60),
                    // Payment Method
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 24),

                    // Payment options
                    _buildPaymentOption('assets/paypal_logo.png', 'PayPal'),
                    SizedBox(height: 30),
                    _buildPaymentOption('assets/gpay_logo.png', 'Google Pay'),
                    SizedBox(height: 30),
                    _buildPaymentOption('assets/paytm_logo.png', 'Paytm'),
                    SizedBox(height: 30),
                    _buildPaymentOption(
                      'assets/card_logo.png',
                      'Credit/Debit Card',
                    ),

                    SizedBox(height: 50),

                    // Buttons
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'Back',
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
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                context.go('/palm_reading_confirm');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFFFFFF),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'continue to payment',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentOption(String iconPath, String label) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // You can replace this with actual image assets
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(Icons.payment, color: Colors.grey.shade600, size: 20),
          ),
          SizedBox(width: 16),
          Text(
            'Payment',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpertCard() {
    double cardWidth = MediaQuery.of(context).size.width / 3.5;
    final List<Map<String, dynamic>> astrologers = [
      {
        "name": "SHREEHARI",
        "image": "assets/images/vastupooja7.png",
        "price": "\$34.43",
        "exp": "Exp: 9 Years",
        "orders": "24541 Orders",
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const Text(
            "You’ve Selected Astrologer",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children:
                astrologers.map((astro) {
                  return Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Bookmark icon
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.bookmark_border, size: 18),
                          ),
                        ),

                        // Profile image
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(astro["image"]),
                        ),

                        const SizedBox(height: 8),

                        // Stars
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) =>
                                Icon(Icons.star, size: 16, color: Colors.amber),
                          ),
                        ),

                        const SizedBox(height: 4),

                        // Orders
                        Text(
                          astro["orders"],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),

                        const SizedBox(height: 6),

                        // Name
                        Text(
                          astro["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),

                        // Price
                        Text(
                          "${astro["price"]} /min",
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 6),

                        // Services
                        const Text(
                          "Vastu & Energy Balancing\nTelugu",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),

                        // Experience
                        Text(
                          astro["exp"],
                          style: const TextStyle(fontSize: 12),
                        ),

                        const SizedBox(height: 10),

                        // Buttons row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              icon: const Icon(Icons.person, size: 14),
                              label: const Text(
                                "Follow",
                                style: TextStyle(fontSize: 12),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade200,
                                foregroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                context.go('/book_a_session_vastupooja');
                              },
                            ),
                            const SizedBox(width: 8),
                            Icon(Icons.chat, color: Colors.green, size: 20),
                            const SizedBox(width: 8),
                            Icon(Icons.call, color: Colors.green, size: 20),
                          ],
                        ),

                        const SizedBox(height: 12),

                        // Yellow bottom
                        Container(
                          height: 6,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }

  Widget buildInput(String label, String inputtxt) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        Container(
          width: 250,
          height: 45,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xffCBCBCB),
          ),
          padding: EdgeInsets.all(12),
          child: Text(
            inputtxt,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget buildDropdown(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          items:
              ['Ganapathi Puja', 'Lakshmi Puja'].map((type) {
                return DropdownMenuItem(value: type, child: Text(type));
              }).toList(),
          onChanged: (value) {},
          decoration: InputDecoration(
            fillColor: Colors.grey.shade300,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
          ),
        ),
      ],
    );
  }
}
