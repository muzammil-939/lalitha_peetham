import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PaymentSummaryPage extends StatefulWidget {
  const PaymentSummaryPage({super.key});

  @override
  State<PaymentSummaryPage> createState() => _PaymentSummaryPageState();
}

class _PaymentSummaryPageState extends State<PaymentSummaryPage> {
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
             buildPaymentSummaryPage(context),
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
            children:  [
              
              Text(
                "Complete the payment to confirm your\nbooking",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context,
                    desktop: 45,
                    tablet: 30,
                    mobile: 20
                  ),
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
        )
      ],
    );
  }
Widget buildTextField(
    BuildContext context, String label, String hint, TextEditingController controller) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = ResponsiveHelper.isMobile(context);
  final fieldWidth = isMobile
      ? screenWidth
      : screenWidth > 1200
          ? screenWidth * 0.25
          : screenWidth * 0.35;

  return Container(
    width: fieldWidth,
    margin: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: isMobile ? 14 : 16)),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: "",
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildSectionTitle(BuildContext context, String title) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: isMobile ? 20 : 28),
    ),
  );
}



Widget buildPaymentButton(BuildContext context, String logoAsset, String text) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = ResponsiveHelper.isMobile(context);
  final buttonWidth = isMobile ? screenWidth : screenWidth * 0.50;

  return Container(
    width: buttonWidth,
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(6),
    ),
    height: 45,
    child: Row(
      children: [
        Image.asset(logoAsset, height: 24),
        const SizedBox(width: 15),
        Text(text, style: TextStyle(fontSize: isMobile ? 14 : 16)),
      ],
    ),
  );
}

Widget buildPaymentSummaryPage(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final screenWidth = MediaQuery.of(context).size.width;
  final horizontalPadding = isMobile ? 20.0 : screenWidth * 0.2;

  return Stack(
    children: [
      // Background
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
      // Right floating image
       Positioned(
        top: isMobile ? 60 : 120,
        right: isMobile ? 16 : 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 60 : 100,
          width: isMobile ? 60 : 100,
        ),
      ),
      // Main Content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSectionTitle(context, "Payment Summary"),

              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  buildTextField(context, "Pooja Charges", "₹1000", poojaChargesController),
                  buildTextField(context, "Offerings Add-On", "300", totalCostController),
                ],
              ),
              const SizedBox(height: 15),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  buildTextField(context, "Streaming Options", "Free", poojaChargesController),
                  buildTextField(context, "Total Cost", "₹1000", totalCostController),
                ],
              ),

              const SizedBox(height: 45),

              buildSectionTitle(context, "PAYMENT METHOD"),
              buildPaymentButton(context, 'assets/images/vastupooja12.png', 'Payment'),
              buildPaymentButton(context, 'assets/images/vastupooja13.png', 'Payment'),
              buildPaymentButton(context, 'assets/images/vastupooja14.png', 'Payment'),
              buildPaymentButton(context, 'assets/images/vastupooja15.png', 'Payment'),

              const SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffDC9323),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    context.go('/request_forpandit_page');
                  },
                  child: const Text("Pay", style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}


}

