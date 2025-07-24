import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class GsOrderSummary extends StatefulWidget {
  const GsOrderSummary({super.key});

  @override
  State<GsOrderSummary> createState() => _GsOrderSummaryState();
}

class _GsOrderSummaryState extends State<GsOrderSummary> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeroSection(),
             buildOrderSummaryScreen(context), 

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


  Widget buildOrderSummaryScreen(BuildContext context) {
    return  Stack(
        children: [
                  // 🌄 Background Decorations
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: 500,
            width: 1500,
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            width: 60,
            height: 60,
          ),
        ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Order Summary',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE2C164),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("Name: Ramesh Kumar"),
                            Text("Phone: +91 98765 43210"),
                            Text("Address: Flat No. 203, Sai Residency Apartments"),
                            Text("Street: 5th Cross, JP Nagar"),
                            Text("City: Bengaluru"),
                            Text("State: Karnataka"),
                            Text("Pincode: 560078"),
                              
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE6CC5F),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Change"),
                        ),
                      ),
                          
                          ],
                          
                        ),
                        
                      ),
                     
                      const SizedBox(height: 16),
                      Divider(color: Colors.white,),
                       const SizedBox(height: 16),
                      // Cart Item Section
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
                        Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          onPressed: () {
                            context.go('/gemstone_cmplt_final_payment_method');
                          },
                          child: const Text("Continue"),
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
}


