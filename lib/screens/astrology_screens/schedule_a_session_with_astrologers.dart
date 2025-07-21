import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class ScheduleASessionWithAstrologers extends StatefulWidget {
  const ScheduleASessionWithAstrologers({super.key});

  @override
  State<ScheduleASessionWithAstrologers> createState() => _ScheduleASessionWithAstrologersState();
}

class _ScheduleASessionWithAstrologersState extends State<ScheduleASessionWithAstrologers> {
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
             buildScheduleASessionWithAstrologers(),
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
                "Book Customized E-Poojas Online – Your\nRitual, Your Way",
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

  Widget buildSingleField(String label, String hint, TextEditingController controller,{double width = 300}) {
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


 Widget buildScheduleASessionWithAstrologers() {
  return Stack(
    children: [
      // Background Vector Image
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

      // Top Planet Decoration
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),

      // Watermark Vector
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
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "SCHEDULE A SESSION WITH THE\nASTROLOGER",
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Astrologer Info
            Row(
              children: [
                // Profile Image
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orange, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset('assets/images/vastupooja7.png', fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: Sreehari", style: TextStyle(fontSize: 16)),
                    Text("Experience: 15+ Years Experience", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Purpose + Duration
            Row(
              children: [
                buildTextField("Purpose", "Career", fullNameController),
                const SizedBox(width: 20),
                buildTextField("Duration", "30 Minutes", experienceController),
              ],
            ),
            const SizedBox(height: 15),

            // Date + Time
            Row(
              children: [
                buildTextField("Date", "2025-06-15", preferredDateController),
                const SizedBox(width: 20),
                buildTextField("Time", "10:00 AM", timeController),
              ],
            ),
            const SizedBox(height: 15),

            // Contact Type + Language
            Row(
              children: [
                buildTextField("Contact Type", "Chat", consultationModeController),
                const SizedBox(width: 20),
                buildTextField("Language", "Telugu", serviceController),
              ],
            ),
            const SizedBox(height: 15),

            // Price + Promo
            Row(
              children: [
                buildTextField("Session Price", "\$999", poojaChargesController),
                const SizedBox(width: 20),
                buildTextField("Discount / Promo", "", totalCostController),
              ],
            ),

            const SizedBox(height: 50),
            const Text("User Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            const SizedBox(height: 20),
            Row(
              children: [
                buildTextField("Name", "Amith Sharma", customerNameController),
                const SizedBox(width: 20),
                buildTextField("Contact", "9090909094", contactNumberController),
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

            const SizedBox(height: 50),
            const Text("Total Amount", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
             Row(
              children: [
                buildTextField("Session Price", "\$999", TextEditingController()),
                const SizedBox(width: 10),
                const Expanded(child: SizedBox()), // Keeps the layout aligned
              ],
            ),
           // buildSingleField("Session Price", "\$999", TextEditingController()),

            const SizedBox(height: 60),

            // Proceed Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDC9323),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    context.go('/chart_payment_method');
                  },
                  child: const Text("Proceed To Payment", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

}

