import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class AstrologersPaymentMethod extends StatefulWidget {
  const AstrologersPaymentMethod({super.key});

  @override
  State<AstrologersPaymentMethod> createState() => _AstrologersPaymentMethodState();
}

class _AstrologersPaymentMethodState extends State<AstrologersPaymentMethod> {
   // Astrologer details
  final fullNameController = TextEditingController();
  final experienceController = TextEditingController();
  final serviceController = TextEditingController();
  final consultationModeController = TextEditingController();
  final preferredDateController = TextEditingController();
  final timeController = TextEditingController();

  // Customer details
  final customerNameController = TextEditingController();
  final contactNumberController = TextEditingController();
  final emailController = TextEditingController();

  // Payment
  final poojaChargesController = TextEditingController();
  final totalCostController = TextEditingController();

    @override
  void dispose() {
    fullNameController.dispose();
    experienceController.dispose();
    serviceController.dispose();
    consultationModeController.dispose();
    preferredDateController.dispose();
    timeController.dispose();
    customerNameController.dispose();
    contactNumberController.dispose();
    emailController.dispose();
    poojaChargesController.dispose();
    totalCostController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
             buildAstrologersPaymentMethod(),
             SizedBox(height: 80,),
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
              Text("Menu", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              
              Text(
                "Complete the payment to confirm your\nbooking",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
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
              'assets/images/online_pooja2.jpg',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Widget buildTextField(String label, String hint, TextEditingController controller) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hint,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSingleField(String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }

  Widget buildPaymentButton(String logoAsset, String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 45,
      child: Row(
        children: [
          Image.asset(logoAsset, height: 25),
          const SizedBox(width: 15),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget buildAstrologersPaymentMethod() {
    return  Stack(
    children: [
           // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 350,
          width: 1500,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 🪐 Planet Image
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),
             // Background Watermark Vector Positioned Bottom-Right
Positioned(
  top: 0,
  bottom: 60,
  right: 380,
  child: Opacity(
    opacity: 0.8,
    child: Image.asset(
      'assets/images/Vector (2).png',
      width: 500,
      height: 500,
      fit: BoxFit.contain,
      //color: Colors.amber[800],
    ),
  ),
),
    
    Padding(
           padding: const EdgeInsets.symmetric(horizontal: 200.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              buildSectionTitle("Astrologer Details"),
              Row(
                children: [
                  buildTextField("Full Name", "Enter Astrologer Name", fullNameController),
                  const SizedBox(width: 10),
                  buildTextField("Experience", "e.g. 15 Years", experienceController),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  buildTextField("Service", "e.g. Vastu Pooja", serviceController),
                  const SizedBox(width: 10),
                  buildTextField("Consultation Mode", "e.g. Video Call", consultationModeController),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  buildTextField("Preferred Date", "YYYY-MM-DD", preferredDateController),
                  const SizedBox(width: 10),
                  buildTextField("Time", "e.g. 10:00 AM", timeController),
                ],
              ),
              buildSectionTitle("Customer Details"),
              Row(
                children: [
                  buildTextField("Full Name", "Enter Your Name", customerNameController),
                  const SizedBox(width: 10),
                  buildTextField("Contact Number", "Enter Mobile Number", contactNumberController),
                ],
              ),
              const SizedBox(height: 15),
              Row(
              children: [
                buildTextField("Email", "Enter Your Email", emailController),
                const SizedBox(width: 10),
                const Expanded(child: SizedBox()), // Keeps the layout aligned
              ],
            ),
            const SizedBox(height: 45),

              buildSectionTitle("Payment Summary"),
              Row(
                children: [
                  buildTextField("Pooja Charges", "₹1000", poojaChargesController),
                  const SizedBox(width: 10),
                  buildTextField("Total Cost", "₹1000", totalCostController),
                ],
              ),

              const SizedBox(height: 45),

              buildSectionTitle("PAYMENT MEETHOD"),
              buildPaymentButton('assets/images/vastupooja12.png', 'Payment'),
              buildPaymentButton('assets/images/vastupooja13.png', 'Payment'),
              buildPaymentButton('assets/images/vastupooja14.png', 'Payment'),
              buildPaymentButton('assets/images/vastupooja15.png', 'Payment'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffDC9323),
                      foregroundColor: Colors.black,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      // Handle pay logic
                      context.go('/confirm_your_vastu_booking');

                    },
                    child: const Text("Pay", style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
         ),
    ]
    );
      
  }
}

