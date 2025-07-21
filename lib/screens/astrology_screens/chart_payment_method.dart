import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class ChartPaymentMethod extends StatefulWidget {
  const ChartPaymentMethod({super.key});

  @override
  State<ChartPaymentMethod> createState() => _ChartPaymentMethodState();
}

class _ChartPaymentMethodState extends State<ChartPaymentMethod> {
 

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
             buildChartPaymentMethod(),
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

  Widget buildChartPaymentMethod() {
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
  top: 150,
  bottom: 0,
  right: 450,
  child: Opacity(
    opacity: 0.8,
    child: Image.asset(
      'assets/images/Vector (2).png',
      width: 300,
      height: 300,
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
                      context.go('/chart_booking_confirmed_page');

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

