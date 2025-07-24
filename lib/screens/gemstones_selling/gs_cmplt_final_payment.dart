import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class GsCmpltFinalPayment extends StatefulWidget {
  const GsCmpltFinalPayment({super.key});

  @override
  State<GsCmpltFinalPayment> createState() => _GsCmpltFinalPaymentState();
}

class _GsCmpltFinalPaymentState extends State<GsCmpltFinalPayment> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
         child: SingleChildScrollView(
          child: 
          Column(
            children: [
              buildHeroSection() ,
              buildConfirmPaymentSection(context),
            ],
          ),
         ),
    );
  }


    Widget buildHeroSection() {
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
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                " Complete Your Spiritual Shopping",
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
              'assets/images/vastupooja16.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
  
   Widget buildConfirmPaymentSection(BuildContext context) {
  return Stack(
    children: [
      // Outer full-screen background image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 500, // Adjust height
          width: 1500,  
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // Top-right planet image
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Confirm Your Booking with Final Payment",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 30),

         Container(
          
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFEAC63E),
          ),
          child: Stack(
            children: [
              // Inner container background image
              Center(
               
                child: Opacity(
                  opacity: 0.1, // Adjust for subtle watermark effect
                  child: SizedBox(
                    height: 550,
                    width: 550,
                    child: Image.asset(
                      'assets/images/vector (2).png', // Make sure path is correct
                      fit: BoxFit.cover,
                      color: Colors.white,
                      // height: 50,
                      // width: 50,
                    ),
                  ),
                ),
              ),
         
              // Foreground content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  const SizedBox(height: 20),
                   Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 250,
                              margin: EdgeInsets.all(16),
                              padding: const EdgeInsets.all(8),
                              color: const Color(0xFFE4C74D),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/gemstone3.png',
                                  width: 90,
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Durga Ammavaru Idol',
                                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: const [
                                      Text(
                                        '₹300',
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        '₹200',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE2C164),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: 'Quantity',
                                        items: const [
                                          DropdownMenuItem(
                                            value: 'Quantity',
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 12),
                                              child: Text('Quantity'),
                                            ),
                                          ),
                                        ],
                                        onChanged: (_) {},
                                        icon: const Icon(Icons.keyboard_arrow_down),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  const Text('Idol Price: ₹200'),
                                  const Text('Delivery Cost: ₹30'),
                                  const Text(
                                    'Total Cost: ₹230',
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                   const SizedBox(height: 16),
                     
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  SizedBox(height: 30,),
                  const Divider(height: 30, color: Colors.black87),
                  SizedBox(height: 60,),
         
                  const Text(
                    "Payment Method",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(height: 15),
         
                  buildPaymentMethodButton('assets/images/vastupooja12.png', 'PayPal  Payment'),
                  buildPaymentMethodButton('assets/images/vastupooja13.png', 'GPay  Payment'),
                  buildPaymentMethodButton('assets/images/vastupooja14.png', 'Paytm  Payment'),
                  buildPaymentMethodButton('assets/images/vastupooja15.png', 'Credit/Debit  Payment'),
         
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xFFCDCDCD),
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Back", style: TextStyle(color: Colors.black)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          context.go('/gemstone_booking_confirm');
                        },
                        child: const Text("Continue"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
         ),
          ]
        )
      )
    ],
  );
}
Widget buildPaymentMethodButton(String logoAsset, String text) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white,
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