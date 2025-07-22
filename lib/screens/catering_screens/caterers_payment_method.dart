import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CaterersPaymentMethod extends StatefulWidget {
  const CaterersPaymentMethod({super.key});

  @override
  State<CaterersPaymentMethod> createState() => _CaterersPaymentMethodState();
}

class _CaterersPaymentMethodState extends State<CaterersPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
             buildCatererReviewCheckout(context), 
            SizedBox(height: 20,),
            buildChartPaymentMethod(),
            const SizedBox(height: 80),
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
                "Complete the payment to confirm\nyour booking",
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


Widget buildCatererReviewCheckout(BuildContext context) {
  return Stack(
    children: [
      // 🌄 Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // 🔴 Planet Icon Top Right
      Positioned(
        top: 100,
        right: 50,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 100,
          width: 100,
        ),
      ),

      // 🟡 Main Content
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Payment page",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // 🟨 Yellow Box
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 📋 Event Details
                  Row(
                    children: const [
                      Icon(Icons.event, color: Colors.brown),
                      SizedBox(width: 8),
                      Text(
                        "Event Details",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("• Event Type: Wedding Reception"),
                  const Text("• Event Date: June 20, 2025"),
                  const Text("• Time: 6:00 PM – 11:00 PM"),
                  const Text("• Guest Count: 250 Guests"),
                  const Text("• Venue: Royal Banquet Hall, Hyderabad"),

                  const SizedBox(height: 20),

                  // 🍛 Menu Highlights
                  Row(
                    children: const [
                      Icon(Icons.restaurant_menu, color: Colors.deepOrange),
                      SizedBox(width: 8),
                      Text(
                        "Menu Highlights",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("• Starters: Veg Manchurian, Chicken Tikka, Spring Rolls"),
                  const Text("• Main Course: Biryani (Veg & Non-Veg), Butter Chicken, Paneer Butter Masala"),
                  const Text("• Breads & Rice: Naan, Jeera Rice"),
                  const Text("• Desserts: Gulab Jamun, Ice Cream"),
                  const Text("• Beverages: Soft Drinks, Mineral Water"),

                  const SizedBox(height: 30),

                  // 💰 Amount Inputs
                  Row(
                    children: [
                      // 🧾 Amount
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Amount"),
                            const SizedBox(height: 6),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Color(0xFFDFDDDD),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 50),

                      // 💸 Advance
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Advance ( for booking )"),
                            const SizedBox(height: 6),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Color(0xFFDFDDDD),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // 💰 Remaining
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Remaining amount"),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color(0xFFDFDDDD),
                          ),
                        ),
                      ],
                    ),
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


  Widget buildChartPaymentMethod() {
    return  Stack(
    children: [  
    Padding(
           padding: const EdgeInsets.symmetric(horizontal: 150.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              buildSectionTitle("PAYMENT MEETHOD"),
              SizedBox(height: 50,),
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
                      context.go('/caterer_booking_confirm');

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



  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
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
      height: 50,
      
      child: Row(
        children: [
          Image.asset(logoAsset, height: 25),
          const SizedBox(width: 15),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }



}